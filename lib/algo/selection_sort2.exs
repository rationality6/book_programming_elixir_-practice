defmodule Algo.SelectionSort do
  def run(list) do
    select(list, [])
  end

  def select([head | []], _result = acc) do
    acc ++ [head]
  end

  def select(list, _result = acc) do
    min = select_minimum(list)
    select(List.delete(list, min), acc ++ [min])
  end

  def select_minimum([head | [second | []]]) do
    min(head, second)
  end

  def select_minimum([head | [second | tail]]) do
    select_minimum([min(head, second) | tail])
  end

  def smaller(a, b) do
    cond do
      a <= b ->
        a

      a > b ->
        b
    end
  end
end


array0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

Algo.SelectionSort.run(array0)
|> IO.inspect()
