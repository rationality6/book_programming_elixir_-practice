array0 = [1, 2, 3, 4, 5]

for x <- array0 do
  x * x
end
|> IO.inspect()

for x <- [1, 2], y <- [3, 4] do
  x * y
end
|> IO.inspect()

for x <- [1, 2], y <- [5, 6] do
  {x, y}
end
|> IO.inspect()

min_maxes = [{1, 4}, {2, 3}, {10, 15}]

for {min, max} <- min_maxes, n <- min..max do
  n
end
|> IO.inspect()

first8 = [1, 2, 3, 4, 5, 6, 7, 8]

for x <- first8, y <- first8, x >= y, rem(x * y, 10) == 0 do
  {x, y}
end
|> IO.inspect()
|> Kernel.length()
|> IO.inspect()

# swap
reports = [dallas: :hot, minneapolis: :cold, dc: :muggy, la: :smoggy]

for {city, weather} <- reports do
  {weather, city}
end
|> IO.inspect()

for <<ch <- "hello">> do
  ch
end
|> IO.inspect()

for <<ch <- "hello">> do
  <<ch>>
end
|> IO.inspect()

for x <- ~w{ cat dog }, into: %{} do
  {x, String.upcase(x)}
end
|> IO.inspect()

for x <- ["cat", "dog"], into: %{} do
  {x, String.upcase(x)}
end
|> IO.inspect()

for x <- ~w{ cat dog }, into: Map.new() do
  {x, String.upcase(x)}
end
|> IO.inspect()

for x <- ~w{ cat dog }, into: %{"ant" => "Ant"} do
  {x, String.upcase(x)}
end
|> IO.inspect()

for x <- ~w{ cat dog}, into: IO.stream(:stdio, :line) do
  "<<#{x}>>\n"
end
|> IO.inspect()
