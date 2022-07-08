[1, 2, 3 | [4, 5, 6]] |> IO.inspect()

defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise("odd number")
end

Swapper.swap([1, 2, 3, 4, 5, 6]) |> IO.inspect()
Swapper.swap([1, 2, 3, 4, 5]) |> IO.inspect()
Swapper.swap([]) |> IO.inspect()
