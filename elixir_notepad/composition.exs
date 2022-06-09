authors = [
  %{name: "Jose", language: "Elixir"},
  %{name: "Matz", language: "Ruby"},
  %{name: "Larry", language: "Perl"}
]

for row <- authors do
  IO.inspect(row)
end


data = %{name: "Dave", state: "TX", likes: "Elixir"}
for key <- [:name, :likes, :state] do
  %{^key => value} = data
  value
end
|> IO.inspect()


authors = [
  %{name: "Jose", language: "Elixir"},
  %{name: "Matz", language: "Ruby"},
  %{name: "Larry", language: "Perl"}
]

for author <- authors do
  author[:name]
end
|> IO.inspect()
