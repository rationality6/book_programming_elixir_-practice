defmodule Src.Fib do
  def fib_calc(0), do: 0
  def fib_calc(1), do: 1
  def fib_calc(n), do: fib_calc(n - 1) + fib_calc(n - 2)
end
