defmodule Doodle do
  def greetings() do
    "Hello world"
  end
  def iteration do
    Enum.map([1,2,3,4,5], fn i -> i end)
  end
end

Doodle.greetings() |> IO.inspect()
Doodle.iteration() |> IO.inspect()
