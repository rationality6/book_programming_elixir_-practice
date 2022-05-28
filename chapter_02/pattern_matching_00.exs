a = 1
1 = a
2 = a
# matchError

["고구마", "감자", "콜라"]
list0 = ["고구마", "감자", ["의자", "식탁"]]

list = [1, 2, 3]
[a, b, c] = list
IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

list = [1, 2, [3, 4, 5]]
[a, b, c] = list
IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

list = [1, 2, 3]
[a, 2, b] = list
IO.inspect(a)
IO.inspect(b)

list = [1, 2, 3]
[a, 1, b] = list
# matchError

a = [1, 2, 3]
4 = a

[a, b] = [1, 2, 3]
IO.inspect(a)
IO.inspect(b)

a =
  [[1, 2, 3]]
  |> IO.inspect()

[a] =
  [[1, 2, 3]]
  |> IO.inspect()

IO.inspect(a)

[[a]] = [[1, 2, 3]]
IO.inspect(a)

[1, _, _] =
  [1, 2, 3]
  |> IO.inspect()


[1,_,_] = [1,"cat", "dog"]


# pin operator
a = 1
a = 2
^a = 1
IO.puts a

[a,b,a]

a = 1
^a = 2 - 1
