# import
defmodule Example do
  def func1 do
    List.flatten([1, [2, 3], 4])
  end

  def func2 do
    import List, only: [flatten: 1]
    flatten([1, [2, 3], 4])
  end

  def func3 do
    List.duplicate([1, 2, 3], 3) |> IO.inspect()
  end

  def func4 do
    import List, only: [duplicate: 2]
    duplicate([1, 2, 3], 4) |> IO.inspect()
  end
end

Example.func1() |> IO.inspect()
Example.func2() |> IO.inspect()
Example.func3()
Example.func4()

# alias
