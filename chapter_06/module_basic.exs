defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    double(n) + double(n)
  end

end

Times.double(5) |> IO.inspect()
# Times.double("d") |> IO.inspect()

Times.triple(5) |> IO.inspect()

Times.quadruple(5) |> IO.inspect()
