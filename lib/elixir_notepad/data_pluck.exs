data0 = [
  %{a: "foo", b: "bar", c: "baz"},
  %{a: "foo", b: "bar", c: "baz"},
  %{a: "foo", b: "bar", c: "baz"}
]

defmodule Pluck do
  def run_map(data, _column) do
    data
    |> Enum.map(fn x -> %{x: x[:a]} end)
  end

  def run_take(data, _column) do
    data
    |> Enum.map(fn map -> Map.take(map, [:a, :b]) end)
  end
end

# data0
# |> Pluck.run_map(['a', 'b'])
# |> IO.inspect()

data0
|> Pluck.run_take(['a', 'b'])
|> IO.inspect()
