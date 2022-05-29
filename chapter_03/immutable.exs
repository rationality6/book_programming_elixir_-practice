list1 = [3, 2, 1]

list2 =
  [4 | list1]
  |> IO.inspect()

list1 = [3, 2, 1]

list2 =
  [list1 | 4]
  |> IO.inspect()

name = "elixir"
cap_name = String.capitalize(name)

IO.inspect(cap_name)
IO.inspect(name)
