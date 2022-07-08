cast = [
  %{
    character: "Buttercup",
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  %{
    character: "Westley",
    actor: %{
      first: "Cary",
      last: "Elwis"
    },
    role: "farm boy"
  }
]

get_in(cast, [Access.all(), :character])
|> IO.inspect()

get_in(cast, [Access.at(1), :role])
|> IO.inspect()

get_and_update_in(cast, [Access.all(), :actor, :last], fn val -> {val, String.upcase(val)} end)
|> IO.inspect()
