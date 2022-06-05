cast = %{
  buttercup: %{
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  westley: %{
    actor: {"Cary", "Elwis"},
    role: "farm boy"
  }
}

get_in(cast, [Access.key(:westley), :actor, Access.elem(1)])
|> IO.inspect()
