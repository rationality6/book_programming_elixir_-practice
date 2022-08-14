list0 =
  1..7
  |> Enum.to_list()
  |> Enum.shuffle()
  |> IO.inspect()

Enum.sort(list0)
|> IO.inspect()
