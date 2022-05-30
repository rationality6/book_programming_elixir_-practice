defmodule Recursive do
  def gcd(x, 0), do: x

  def gcd(x, y) do
    gcd(y, rem(x, y))
  end
end

Recursive.gcd(72, 90) |> IO.inspect()

rem(72,90) |> IO.inspect
rem(90,72) |> IO.inspect
rem(90,18) |> IO.inspect
