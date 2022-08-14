defmodule Algo.BubbleSort do
  def run(list) when is_list(list) do
    do_sort(list, [])
    |> make_pass(list)

  end

  def do_sort([], _acc), do: []

  def do_sort([first | []], acc) do
    acc ++ [first]
  end

  def do_sort([first | [second | tail]], acc) do
    [new_first, new_second] = swap_to_smaller(first, second)
    do_sort([new_second | tail], acc ++ [new_first])
  end

  def make_pass(bubbled_list, old_list) when bubbled_list != old_list do
    do_sort(bubbled_list, []) |> make_pass(bubbled_list)
  end

  def make_pass(bubbled_list, old_list) when bubbled_list == old_list do
    bubbled_list
  end

  def swap_to_smaller(a, b) when a >= b, do: swap(a, b)
  def swap_to_smaller(a, b) when a < b, do: [a, b]

  def swap(a, b), do: [b, a]
end

1..20
|> Enum.to_list()
|> Enum.shuffle()
|> IO.inspect()
|> Algo.BubbleSort.run()
|> IO.inspect()

# Algo.BubbleSort.swap_to_smaller(1, 5) |> IO.inspect()
# Algo.BubbleSort.swap_to_smaller(5, 2) |> IO.inspect()
