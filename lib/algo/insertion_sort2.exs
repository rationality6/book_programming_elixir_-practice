defmodule InsertionSort do
  def run(list) when is_list(list) do
    [head | rest] = list
    do_sort([head], rest)
  end

  def do_sort(sorted_list, []), do: sorted_list

  def do_sort(sorted_list, [head | tail]) do
    do_sort(sorted_list, tail)
  end

  def insert() do

  end
end

1..10
|> Enum.to_list()
|> Enum.shuffle()
|> InsertionSort.run()
|> IO.inspect()
