defmodule Basic do
  def perform(a, b \\ 0, c) do
    _perform(a, b, c)
  end

  defp _perform(a, b, c) do
    "#{a}#{b}#{c}"
  end
end

Basic.perform(1, 2) |> IO.inspect()
