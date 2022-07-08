defmodule Src.RecursionAdder do
  def adder(1), do: 1

  def adder(num) when is_integer(num) do
    num + adder(num - 1)
  end
end
