defmodule Functional do
  def re_reduce([], value, _func), do: value

  def re_reduce([head | tail], value, func) do
    re_reduce(tail, func.(head, value), func)
  end

  def map_sum([], _func), do: 0

  def map_sum([head | tail], func) do
    func.(head) + map_sum(tail, func)
  end
end

Functional.re_reduce([2, 3, 4], 0, &(&1 + &2))
|> IO.inspect()

Functional.re_reduce([5, 6, 7], 0, &(&1 + &2))
|> IO.inspect()

Functional.re_reduce([8, 9, 10], 0, &(&1 + &2))
|> IO.inspect()

Functional.map_sum([1, 2, 3], &(&1 * &1))
|> IO.inspect()

Functional.map_sum([4, 5, 6], &(&1 * &1))
|> IO.inspect()
