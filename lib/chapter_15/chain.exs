defmodule Chain do
  def counter(next_pid) do
    receive do
      n ->
        send(next_pid, n + 1)
    end
  end

  def create_processes(n) do
    code_to_run = fn _, send_to ->
      spawn(Chain, :counter, [send_to])
    end

    last = Enum.reduce(1..n, self(), code_to_run)

    send(last, 0)

    receive do
      final_answer when is_integer(final_answer) ->
        "result is #{inspect(final_answer)}"
    end
  end

  def timer_run(n) do
    :timer.tc(Chain, :create_processes, [n])
    |> IO.inspect()
  end
end

# Chain.timer_run(100_000)

Chain.create_processes(100_000) |> IO.inspect()
