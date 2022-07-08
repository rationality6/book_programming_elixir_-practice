Stream.cycle(~w{green white})
|> Stream.zip(1..5)
|> Enum.map(& &1)
|> IO.inspect()

Stream.cycle(~w{green white})
|> Stream.zip(1..5)
|> Enum.map(fn {class, value} -> "<tr class='#{class}></tr>" end)
|> IO.inspect()
