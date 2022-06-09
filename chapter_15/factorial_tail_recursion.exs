defmodule Facto do
  def factorial(0), do: 1

  def factorial(n) do
    n * factorial(n - 1)
  end

  def factorial_tail_recursion(n) do
    _factorial_tail_recursion(n, 1)
  end

  defp _factorial_tail_recursion(0, acc) do
    acc
  end

  defp _factorial_tail_recursion(n, acc) do
    _factorial_tail_recursion(n - 1, acc * n)
  end
end

Facto.factorial(5) |> IO.inspect()
Facto.factorial_tail_recursion(5) |> IO.inspect()
