defmodule SelectionSort do
  def run(list) when Kernel.is_list(list) do
    do_select(list, [])
  end

  def do_select([head | []], ordered_list) do
    ordered_list ++ [head]
  end

  def do_select(list, ordered_list) do
    min = minimun_in_list(list)
    do_select(list_delete(list, min), ordered_list ++ [min])
  end

  @spec list_delete([], any) :: []
  @spec list_delete([...], any) :: list
  def list_delete(list, element)
  def list_delete([element | list], element), do: list
  def list_delete([other | list], element), do: [other | list_delete(list, element)]
  def list_delete([], _element), do: []

  def minimun_in_list([first | [second | []]]) do
    smaller(first, second)
  end

  def minimun_in_list([first | [second | rest]]) do
    minimun_in_list([smaller(first, second) | rest])
  end

  def smaller(a, b) do
    cond do
      a <= b ->
        a

      a > b ->
        b
    end
  end
end

shuffled_list =
  1..10
  |> Enum.to_list()
  |> IO.inspect()
  |> Enum.shuffle()
  |> IO.inspect()

# SelectionSort.smaller(1,2) |> IO.inspect()
# SelectionSort.smaller(2,1) |> IO.inspect()
# SelectionSort.smaller(3,4) |> IO.inspect()

shuffled_list
|> SelectionSort.run()
|> IO.inspect()

# List.delete([1, 2, 3, 4, 5], 4) |> IO.inspect()

# [1, 2, 3, 4, 5]
# |> SelectionSort.list_delete(5)
# |> IO.inspect()
