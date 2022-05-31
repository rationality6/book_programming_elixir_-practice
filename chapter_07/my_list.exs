defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def square2([]), do: []

  def square2([head | tail]) do
    head_mulity = head * head
    [head_mulity | square2(tail)]
  end

  def re_map([], _func), do: []
  def re_map([head | tail], func), do: [func.(head) | re_map(tail, func)]
end

MyList.add_1([3]) |> IO.inspect()
MyList.add_1([5]) |> IO.inspect()

MyList.len([1, 2, 3, 4, 5]) |> IO.inspect()
MyList.len([1, 2, 3, 4, 5, 9]) |> IO.inspect()

MyList.square([2, 3, 4]) |> IO.inspect()
MyList.square2([2, 3, 4]) |> IO.inspect()

Enum.map([2, 3, 4], &(&1 + 1)) |> IO.inspect()
MyList.re_map([2, 3, 4], &(&1 + 1)) |> IO.inspect()
Enum.map([2, 3, 4], &(&1 * 2)) |> IO.inspect()
MyList.re_map([2, 3, 4], &(&1 * 2)) |> IO.inspect()
