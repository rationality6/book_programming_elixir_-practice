defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect([p1, p2, p3, p4])
  end
end

Example.func(4, 5, 6, 7)
Example.func(4, 5, 6)
Example.func(1, 4)

Example.func('a', 'b', 'c', 'd')
Example.func('a', 'b', 'c')
Example.func('a', 'b')

# error
defmodule DefaultParams1 do
  def func(p1, p2 \\ 123) do
    IO.inspect([p1, p2])
  end

  def func(p1, 99) do
    IO.inspect("you said 99")
  end
end

DefaultParams1.func(2)

# should write like below
defmodule DefaultParams2 do
  def func(p1, p2 \\ 123)

  def func(p1, p2) do
    IO.inspect("#{p1} #{p2}")
  end

  def func(p1, 99) do
    IO.inspect("you said 99")
  end
end

DefaultParams2.func(2)
DefaultParams2.func(2, 99)
DefaultParams2.func(2, 122)
