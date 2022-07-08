people = [
  %{name: "Grumpy", height: 1.24},
  %{name: "Dave", height: 1.88},
  %{name: "Dopey", height: 1.32},
  %{name: "Shaquille", height: 2.16},
  %{name: "Sneezy", height: 1.28}
]

defmodule HotelRoom do
  def book(%{name: name, height: height}) when height > 1.9 do
    IO.puts("Need extra-long bed for #{name}")
  end

  def book(%{name: name, height: height}) when height < 1.3 do
    IO.puts("Need low shower ccontrols for #{name}")
  end

  def book(person) do
    IO.puts("Need regular bed for #{person.name}")
  end
end

people |> Enum.each(&HotelRoom.book/1)

# Need low shower ccontrols for Grumpy
# Need regular bed for Dave
# Need regular bed for Dopey
# Need extra-long bed for Shaquille
# Need low shower ccontrols for Sneezy

%{2 => state} = %{1 => :ok, 2 => :error}
IO.inspect(state)

# key binding error
%{item => :ok} = %{1 => :ok, 2 => :error}

data = %{name: "Dave", state: "TX", likes: "Elixir"}

for key <- [:name, :likes] do
  %{^key => value} = data
  value
end
|> IO.inspect()

m = %{a: 1, b: 2, c: 3}

m1 =
  %{m | b: "two", c: "three"}
  |> IO.inspect()

m2 =
  %{m1 | a: "one"}
  |> IO.inspect()

m3 =
  %{m2 | b: "2"}
  |> IO.inspect()
