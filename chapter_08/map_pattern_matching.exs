person = %{name: "Dave", height: 1.88}

%{name: a_name} = person
IO.inspect(a_name)

person = %{name: "Dave", height: 1.88}

(%{name: _, height: _} = person)
|> IO.inspect()

person = %{name: "Dave", height: 1.88}

(%{name: "Dave"} = person)
|> IO.inspect()

person = %{name: "Dave", height: 1.88}

(%{name: _, weight: _} = person)
|> IO.inspect()

people = [
  %{name: "Grumpy", height: 1.24},
  %{name: "Dave", height: 1.88},
  %{name: "Dopey", height: 1.32},
  %{name: "Shaquille", height: 2.16},
  %{name: "Sneezy", height: 1.28}
]

for person = %{height: height} <- people, height > 1.5 do
  person
end
|> IO.inspect()
