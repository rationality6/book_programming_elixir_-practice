map = %{name: "Dave", likes: "Programming", where: "Dallas"}

Map.keys(map) |> IO.inspect()
Map.values(map) |> IO.inspect()
map[:name] |> IO.inspect()
map.name |> IO.inspect()
map1 = Map.drop(map, [:where, :likes])
map1 |> IO.inspect()

map2 = Map.put(map, :also_likes, "Ruby")
map2 |> IO.inspect()

Map.keys(map2) |> IO.inspect()

Map.has_key?(map1, :where) |> IO.inspect()
Map.has_key?(map2, :where) |> IO.inspect()

{value, updated_map} = Map.pop map2, :also_likes
IO.inspect(value)
IO.inspect(updated_map)
