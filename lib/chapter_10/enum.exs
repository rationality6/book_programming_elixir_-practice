list = Enum.to_list(1..5) |> IO.inspect()
Enum.concat([1, 2, 3], [4, 5, 7]) |> IO.inspect()
Enum.concat([1, 2, 3], 'abc') |> IO.inspect()

Enum.to_list(1..5)
|> Enum.map(&(&1 * 10))
|> IO.inspect()

Enum.to_list(1..5)
|> Enum.map(&String.duplicate("*", &1))
|> IO.inspect()

Enum.at(10..30, 3) |> IO.inspect()
Enum.at(10..20, 9) |> IO.inspect()
Enum.at(10..20, 20, :no_one_here) |> IO.inspect()

list = Enum.to_list(1..5)
|> Enum.filter(&(&1 > 2))
|> IO.inspect
