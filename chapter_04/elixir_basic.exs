Regex.run(~r{[aeiou]}, "caterpillar")
|> IO.inspect()

Regex.scan(~r{[aeiou]}, "caterpillar")
|> IO.inspect()

Regex.split(~r{[aeiou]}, "caterpillar")
|> IO.inspect()

Regex.replace(~r{[aeiou]}, "caterpillar", "*")
|> IO.inspect()

{status, count, action} = {:ok, 42, "next"}
IO.inspect(status)
IO.inspect(count)
IO.inspect(action)

{status, file} = File.open("chapter_04/memo")
IO.inspect(status)
IO.inspect(file)

([1, 2, 3] ++ [4, 5, 6])
|> IO.inspect()

([1, 2, 3, 4] -- [2, 4])
|> IO.inspect()

(1 in [1, 2, 3, 4, 5])
|> IO.inspect()

('wombat' in [1, 2, 3, 4, 5])
|> IO.inspect()

[name: "dave", sity: "Dallas"]
|> IO.inspect()

state =
  %{"AL" => "Alabama", "WI" => "Wisconsin"}
  |> IO.inspect()

state =
  %{red: 0xFF000}
  |> IO.inspect()

name = "Jose Valim"

%{String.downcase(name) => name}
|> IO.inspect()

map0 =
  %{:a => "b", {1, 1, 2} => 3}
  |> IO.inspect()

IO.inspect(map0[{1, 1, 2}])
