defmodule Facto do
  def tail(n) do
    _factorial_tail_recursion(n, 1)
  end

  defp _factorial_tail_recursion(0, acc) do
    acc
  end

  defp _factorial_tail_recursion(n, acc) do
    _factorial_tail_recursion(n - 1, acc * n)
  end
end
