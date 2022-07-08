defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

Factorial.of(5) |> IO.inspect()
Factorial.of(1000) |> IO.inspect()
