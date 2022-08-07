defmodule Algo.InsertionSort5 do
  def run(list) do
    do_sort([], list)
  end

  def do_sort(acc, []) do
    acc
  end

  def do_sort(acc, [head | tail]) do
    do_sort(insert(acc, head), tail)
  end

  def insert([], element) do
    [element]
  end

  def insert([head | tail], element) when element <= head do
    [element | [head | tail]]
  end

  def insert([head | tail], element) do
    [head | insert(tail, element)]
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Algo.InsertionSort5.run()
|> IO.inspect()
