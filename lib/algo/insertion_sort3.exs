defmodule InsertionSort do
  def run(list) do
    do_sort(list)
  end

  def do_sort([head | rest]) do
    [head | do_sort(rest)]
  end

  def do_sort([]) do
    []
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Insertion.run()
|> IO.inspect()
