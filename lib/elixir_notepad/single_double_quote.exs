# charlist
('hello' ++ ' ' ++ 'world') |> IO.inspect()

# binary
("hello" <> " " <> "world") |> IO.inspect()

# this is wrong
("hello" ++ " " ++ "world") |> IO.inspect()
# also wrong
('hello' ++ " " ++ 'world') |> IO.inspect()
# you just don't get it
("hello" <> (" " ++ 'world')) |> IO.inspect()

# convert
to_charlist("hello") |> IO.inspect()
to_string('hello') |> IO.inspect()
(to_string('hello') <> " world") |> IO.inspect()
to_charlist("hello") ++ ' world'
