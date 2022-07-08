sorteds = [
  %{"id" => 1, name: 'foo'},
  %{"id" => 2, name: 'bar'},
  %{"id" => 3, name: 'baz'},
  %{"id" => 4, name: 'baza'}
]

created_ats = Enum.map(sorteds, & &1["id"])
created_ats |> IO.inspect()
