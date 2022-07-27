defmodule Algo.SelectionSort do
  def sort(list) when is_list(list) do
    do_selection(list, [])
  end

  defp do_selection([head | []], acc) do
    acc ++ [head]
  end

  defp do_selection(list, acc) do
    min = min(list)
    do_selection(:lists.delete(min, list), acc ++ [min])
  end

  defp min([first | [second | []]]) do
    smaller(first, second)
  end

  defp min([first | [second | tail]]) do
    min([smaller(first, second) | tail])
  end

  def smaller(e1, e2) do
    if e1 <= e2 do
      e1
    else
      e2
    end
  end
end

# array0 = [100, 4, 10, 6, 9, 3]
# array0
# |> Algo.SelectionSort.sort()
# |> IO.inspect()
# result [1, 3, 4, 6, 9, 10]

# array0 = [100, 4, 10, 6, 9, 3]
# :lists.delete(4, array0) |> IO.inspect()
