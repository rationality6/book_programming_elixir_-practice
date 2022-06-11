Code.require_file("src/factorial_tail.exs")

defmodule FactoServer do
  import Facto, only: [tail: 1]

  def facto(scheduler) do
    send(scheduler, {:ready, self()})

    receive do
      {:facto, n, client} ->
        send(client, {:anwser, n, tail(n), self()})
        facto(scheduler)

      {:shutdown} ->
        exit(:normal)
    end
  end
end

defmodule Scheduler do
  def run(num_processes, module, func, to_calculate) do
    1..num_processes
    |> Enum.map(fn _ -> spawn(module, func, [self()]) end)
    |> schedule_processes(to_calculate, [])
  end

  defp schedule_processes(processes, queue, results) do
    receive do
      {:ready, pid} when length(queue) > 0 ->
        [next | tail] = queue
        send(pid, {:facto, next, self()})
        schedule_processes(processes, tail, results)

      {:ready, pid} ->
        send(pid, {:shutdown})

        if length(processes) > 1 do
          schedule_processes(List.delete(processes, pid), queue, results)
        else
          Enum.sort(results, fn {n1, _}, {n2, _} -> n1 <= n2 end)
        end

      {:answer, number, result, _pid} ->
        schedule_processes(processes, queue, [{number, result} | results])
    end
  end
end

to_process = List.duplicate(37, 20)

Enum.each(1..10, fn num_processes ->
  {time, result} =
    :timer.tc(
      Scheduler,
      :run,
      [num_processes, FactoServer, :facto, to_process]
    )

  if num_processes == 1 do
    IO.puts(inspect(result))
    IO.puts("\n # 시간 (s)")
  end
  :io.format "~2B       ~.2f~n", [num_processes, time/1000000.0]
end)
