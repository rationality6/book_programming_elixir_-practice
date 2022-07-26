defmodule InsertionSort do
  def run(list) when is_list(list) do
    do_sort(list, [])
  end

  def do_sort([], acc) do
    acc
  end

  def do_sort([head | tail], acc) do
    after_insert = insert(head, acc)
    do_sort(tail, after_insert)
  end

  defp insert(e, []) do
    [e]
  end

  defp insert(elem, [min | rest]) do
    cond do
      min >= elem -> [elem, min | rest]
      true -> [min | insert(elem, rest)]
    end
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> InsertionSort.run()
|> IO.inspect()
