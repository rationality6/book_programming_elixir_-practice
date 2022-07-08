defmodule Author do
  defstruct name: "", language: ""
end

defmodule Langs do
  @authors [
    %Author{name: "Jose", language: "Elixir"},
    %Author{name: "Matz", language: "Ruby"},
    %Author{name: "Larry", language: "Perl"}
  ]

  def authors do
    @authors
  end
end

authors = [
  %{name: "Jose", language: "Elixir"},
  %{name: "Matz", language: "Ruby"},
  %{name: "Larry", language: "Perl"}
]

languages_with_an_r = fn :get, collection, next_fn ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end

get_in(authors, [languages_with_an_r, :name])
|> IO.inspect()
