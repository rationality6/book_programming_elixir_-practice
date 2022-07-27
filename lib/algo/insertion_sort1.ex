defmodule Algo.InsertionSort do
  def run(list) do
    [head | tail] = list
    do_sort(tail, [head])
  end

  defp do_sort([], sorted_list) do
    sorted_list
  end

  defp do_sort([head | tail], sorted_list) do
    inserted = insert(head, sorted_list)
    do_sort(tail, inserted)
  end

  defp insert(elem, []) do
    [elem]
  end

  defp insert(elem, sorted_list) do
    [min | rest] = sorted_list

    if min >= elem do
      [elem | [min | rest]]
    else
      [min | insert(elem, rest)]
    end
  end
end

# [1, 2, 100, 3, 4, 1, 200, 45, 6, 10]
# |> Algo.InsertionSort.run()
# |> IO.inspect()
