"Hello_world"
|> IO.inspect

IO.inspect(<<0, 1, 2>>, width: 40)

IO.inspect(1..100, label: "a wonderful range")

[1, 2, 3]
|> IO.inspect(label: "before")
|> Enum.map(&(&1 * 2))
|> IO.inspect(label: "after")
|> Enum.sum()
