
defmodule

defmodule Recursion do
  def factorial(1), do: 1

  def factorial(num) when is_integer(num) do
    IO.inspect(num)
    num + factorial(num - 1)
  end
end

Recursion.factorial(5) |> IO.inspect()
