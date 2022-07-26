defmodule Rev do
  def run(list) do
    reverse(list, [])
  end

  def reverse([], acc), do: acc

  def reverse([head | tail], acc) do
    reverse(tail, [head | acc])
  end
end

# def reverse(input, acc \\ [])
# def reverse([], acc), do: acc

# def reverse([head | tail], acc) do
#   reverse(tail, [head | acc])
# end

1..8
|> Enum.to_list()
|> Rev.run()
|> IO.inspect()

# ⇒ [3, 2, 1]
