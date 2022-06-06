options = [
  {:width, 72},
  {:style, "light"},
  {:style, "print"}
]

List.last(options)
|> IO.inspect()

Keyword.get_values(
  options,
  :style
)
|> IO.inspect()
