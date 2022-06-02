nested_list0 = [[[1], [2]], 3, 4, 5, 6]
nested_list0 |> List.flatten() |> IO.inspect()

list0 = [1, 2, 3]

List.foldl(list0, "", fn value, acc -> "#{value}(#{acc})" end)
|> IO.inspect()

List.foldr(list0, "", fn value, acc -> "#{value}(#{acc})" end)
|> IO.inspect()

list = [1, 2, 3]

List.replace_at(list, 1, "buckle my shoe")
|> IO.inspect()

kw = [{:name, "Dave"}, {:likes, "Programming"}, {:where, "Dallas", "TX"}]
List.keyfind(kw, "Dallas", 1) |> IO.inspect()
List.keyfind(kw, "TX", 2) |> IO.inspect()
List.keyfind(kw, "TX", 1) |> IO.inspect()
List.keyfind(kw, "TX", 1, "No city called TX") |> IO.inspect()
List.keyfind(kw, "TX", 2, "No city called TX") |> IO.inspect()

List.keydelete(kw, "TX", 2) |> IO.inspect()
List.keyreplace(kw, :name, 0, {:first_name, "Dave"}) |> IO.inspect()
