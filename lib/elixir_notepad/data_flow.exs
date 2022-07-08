first10 = 0..10 |> Enum.to_list

for x <- first10, x == 5 or x == 6 do
  x
end
|> IO.inspect()

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50]
]

for [id: x, ship_to: y, net_amount: _z] <- orders do
  y
end
|> IO.inspect()
