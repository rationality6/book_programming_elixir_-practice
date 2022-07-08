defmodule Factorial do
  def of(0), do: 1

  def of(n) when is_integer(n) and n > 0 do
    n * of(n - 1)
  end
end

Factorial.of(5) |> IO.inspect()
Factorial.of(1000) |> IO.inspect()
Factorial.of(-1) |> IO.inspect()
Factorial.of(-100) |> IO.inspect()

defmodule Factorial do
  def of(0), do: 1

  def of(n) do
    if n < 0 do
      raise "factorial called on a negative number"
    else
      n * of(n - 1)
    end
  end
end

Factorial.of(5) |> IO.inspect()
Factorial.of(1000) |> IO.inspect()
Factorial.of(-1) |> IO.inspect()
Factorial.of(-100) |> IO.inspect()
