defmodule Algo.SelectionSort1 do
  def sort(list) when is_list(list) do
    do_selection(list, [])
  end

  def do_selection([head | []], acc) do
    acc ++ [head]
  end

  def do_selection(list, acc) do
    min = minimum(list)
    do_selection(List.delete(list, min), acc ++ [min])
  end

  def minimum([head | [second | []]]) do
    smaller(head, second)
  end

  def minimum([head | [second | tail]]) do
    minimum([smaller(head, second) | tail])
  end

  def smaller(a, b) do
    if a <= b do
      a
    else
      b
    end
  end
end

# [1, 5, 8, 22, 3, 2]
# |> Algo.SelectionSort1.sort()
# |> IO.inspect()

# [4, 5, 8, 22, 3, 2]
# |> Algo.SelectionSort1.minimum()
# |> IO.inspect()
