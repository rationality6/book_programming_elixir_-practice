defmodule RecursionTail do
  def factorial(1), do: 1

  def factorial(num) when is_integer(num) do
    num + factorial(num - 1)
  end
end
