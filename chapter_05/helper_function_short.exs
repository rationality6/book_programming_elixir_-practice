add_one = &(&1 + 1)
add_one.(44) |> IO.inspect()
square = &(&1 * &1)

square.(5) |> IO.inspect()

multiply = &(&1 * &2)
multiply.(5, 6) |> IO.inspect()

speak = &IO.inspect(&1)
speak.("World")

rnd = &(Float.round(&1, &2) |> IO.inspect())
rnd = &(Float.round(&2, &1) |> IO.inspect())

divrem = &{div(&1, &2), rem(&1, &2)}
divrem.(13, 5) |> IO.inspect()

match_end = &~r/.*#{&1}$/
result = "cat" =~ match_end.("t")
IO.inspect(result)

result = "cat" =~ match_end.("!")
IO.inspect(result)

"cat" =~ ~r/t/ |> IO.inspect()
Regex.match?(~r/t/, "cat") |> IO.inspect()

l = &length/1
l.([1, 3, 5, 7]) |> IO.inspect()

"foo" =~ "f" |> IO.inspect()
result = "abcde" =~ ~r/e/
IO.inspect(result)

Enum.map(0..4, &((&1 + 1) |> IO.inspect()))
Enum.map(0..4, &(&1 < 3)) |> IO.inspect()

Enum.map(1..4, &(&1 + 2)) |> IO.inspect()
Enum.map(1..4, &IO.inspect(&1))
