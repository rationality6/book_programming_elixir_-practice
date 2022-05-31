defmodule Answer do
  def re_reduce([], value, _func), do: value

  def re_reduce([head | tail], value, func) do
    re_reduce(tail, func.(head, value), func)
  end
end
