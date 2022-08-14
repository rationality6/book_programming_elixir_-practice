defmodule Algo.Swap do
  @doc """
  큰순으로 스왑
  """
  def perform(a, b) when a <= b, do: [a, b]
  def perform(a, b) when a > b, do: [b, a]
end

defmodule Algo.Bubble do
  def run(list) when is_list(list) do
    do_sort(list, [])
    |> make_pass(list)
  end

  def make_pass(new, old) when new != old do
    do_sort(new, []) |> make_pass(new)
  end

  def make_pass(new, old) when new == old do
    new
  end

  def do_sort([first | []], acc) do
    acc ++ [first]
  end

  def do_sort([], acc) do
    acc
  end

  def do_sort([head, second | rest], acc) do
    [new_first, new_second] = Algo.Swap.perform(head, second)
    do_sort([new_second | rest], acc ++ [new_first])
  end
end

list0 =
  1..10
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

list0
|> Algo.Bubble.run()
|> IO.inspect()
