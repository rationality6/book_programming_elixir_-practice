defmodule Algo.InsertionSort do
  def run(list) when is_list(list) do
    [head | rest] = list
    do_sort([head], rest)
  end

  def do_sort(sorted_list, []), do: sorted_list

  def do_sort(sorted_list, [head | tail]) do
    insert(head, sorted_list) |> do_sort(tail)
  end

  def insert(element, []), do: [element]

  def insert(element, [min | rest]) when min >= element do
    [element | [min | rest]]
  end

  def insert(element, [min | rest]) when min < element do
    [min | insert(element, rest)]
  end
end

1..10
|> Enum.to_list()
|> Enum.shuffle()
|> Algo.InsertionSort.run()
|> IO.inspect()
