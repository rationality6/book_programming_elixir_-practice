IO.puts("start")

IO.write("""
  foobar
  nia
""")

"#{:math.pi()}" |> IO.inspect()

str = 'wombat'
is_list(str |> IO.inspect())

[67, 65, 84] |> IO.inspect()

str = 'wombat'
:io.format("~w~n", [str] |> IO.inspect())

str = 'wombat'
List.to_tuple(str) |> IO.inspect()

str = 'wombat'
(str ++ [0]) |> IO.inspect()

('pole' ++ 'vault') |> IO.inspect()

('pole' -- 'vault') |> IO.inspect()

List.zip(['abc', '123']) |> IO.inspect()

[head | tail] = 'cat'
IO.inspect(head)
IO.inspect([head])
IO.inspect(tail)
