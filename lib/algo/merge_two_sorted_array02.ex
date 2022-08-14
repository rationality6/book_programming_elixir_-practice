defmodule Algo.MergeTwo02 do
  def perform(list0, list1) do
    do_merge(list0, list1, [])
  end

  def do_merge(list0, [], acc) do
    acc ++ list0
  end

  def do_merge([], list1, acc) do
    acc ++ list1
  end

  def do_merge([head0 | rest0], [head1 | rest1], acc) when head0 <= head1 do
    do_merge(rest0, [head1 | rest1], acc ++ [head0])
  end

  def do_merge([head0 | rest0], [head1 | rest1], acc) when head0 > head1 do
    do_merge([head0 | rest0], rest1, acc ++ [head1])
  end
end
