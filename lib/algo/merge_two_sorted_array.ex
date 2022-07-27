defmodule Algo.MergeTwo do
  def perform(list0, list1) do
    do_sort(list0, list1, [])
  end

  def do_sort([], y, acc) do
    acc ++ y
  end

  def do_sort(x, [], acc) do
    acc ++ x
  end

  def do_sort([x_head | x_tail], [y_head | y_tail], acc) when x_head <= y_head do
    do_sort(x_tail, [y_head | y_tail], acc ++ [x_head])
  end

  def do_sort([x_head | x_tail], [y_head | y_tail], acc) when x_head > y_head do
    do_sort([x_head | x_tail], y_tail, acc ++ [y_head])
  end
end
