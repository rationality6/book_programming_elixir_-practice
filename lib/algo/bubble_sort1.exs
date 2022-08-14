defmodule Algo.Swap do
  def perform(a, b) when a <= b, do: [a, b]
  def perform(a, b) when a > b, do: [b, a]
end

defmodule Algo.Bubble do
  def run(list) do
    do_sort(list, [])
    |> make_pass(list)
  end

  def make_pass(bubbled_list, old_list) when bubbled_list != old_list do
    do_sort(bubbled_list, []) |> make_pass(bubbled_list)
  end
  def make_pass(bubbled_list, old_list) when bubbled_list == old_list do
    bubbled_list
  end

  def do_sort([], _acc), do: []
  def do_sort([first | []], acc), do: acc ++ [first]
  def do_sort([first | [second | rest]], acc) do
    [new_first, new_second] = Algo.Swap.perform(first, second)
    do_sort([new_second | rest], acc ++ [new_first])
  end
end

list0 =
  1..8
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Bubble.run()
|> IO.inspect()

# Bubble.swap_lower(1, 3) |> IO.inspect()
# Bubble.swap_lower(3, 1) |> IO.inspect()
