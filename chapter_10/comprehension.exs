range0 = [1, 2, 3, 4, 5]

for(
  x <- range0,
  do: x * x
)
|> IO.inspect()

for(x <- range0, x < 4, do: x * x)
|> IO.inspect()

for x <- [1, 2],
    y <- [5, 6],
    do:
      (x * y)
      |> IO.inspect()

for x <- [1, 2, 3],
    y <- [5, 6, 7],
    do:
      (x * y)
      |> IO.inspect()
