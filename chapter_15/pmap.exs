defmodule Parallel do
  import :timer, only: [sleep: 1]

  def pmap(collection, func) do
    me = self()

    collection
    |> Enum.map(fn elem ->
      spawn_link(fn ->
        if 30 > func.(elem) do
          sleep(80)
          send(me, {self(), func.(elem)})
        else
          send(me, {self(), func.(elem)})
        end
      end)
    end)
    |> IO.inspect()
    |> Enum.map(fn pid ->
      receive do
        {^pid, result} ->
          result
      end
    end)
  end
end

Parallel.pmap(1..10, &(&1 * &1))
|> IO.inspect()
