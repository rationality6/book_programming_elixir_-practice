defmodule Algo.SelectionSort do
  def perform(list) when is_list(list) do
    do_select(list, [])
  end

  def do_select([head | []], acc) do
    acc ++ [head]
  end

  def do_select(list, acc) do
    min_num = min_in_list(list)
    rest_without_min = delete_list(list, min_num)
    do_select(rest_without_min, acc ++ [min_num])
  end

  def delete_list([], elem), do: []
  def delete_list([elem | list], elem), do: delete_list(list, elem)

  def delete_list([head | tail], elem) do
    [head | delete_list(tail, elem)]
  end

  def min_in_list([first | [second | []]]) do
    smaller(first, second)
  end

  def min_in_list([first | [second | rest]]) do
    min_in_list([smaller(first, second) | rest])
  end

  def smaller(a, b) do
    if a < b do
      a
    else
      b
    end
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Algo.SelectionSort.perform()
|> IO.inspect()

# [1,2,3,4,5,6]
# |> Algo.SelectionSort.delete_list(6)
# |> IO.inspect()
# |> Algo.SelectionSort.delete_list(1)
# |> IO.inspect()
