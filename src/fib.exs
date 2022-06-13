defmodule Fib do
  def fib_calc(0), do: 0
  def fib_calc(1), do: 1
  def fib_calc(n), do: fib_calc(n - 1) + fib_calc(n - 2)
end

# Fib.fib_calc(10) |> IO.inspect()

# :timer.tc(Fib, :fib_calc, [42])
# |> IO.inspect()
