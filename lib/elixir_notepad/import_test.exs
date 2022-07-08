Code.require_file("src/factorial_tail.exs")
Code.require_file("src/fizz_buzz.exs")

defmodule ImportTest do
  import Facto, only: [tail: 1]
  import FizzBuzz, only: [run: 2]

  def run_tail() do
    tail(5)
  end

  def run_fizz(start, til) do
    run(start, til)
  end
end

ImportTest.run_tail() |> IO.inspect()
ImportTest.run_fizz(1, 20) |> IO.inspect()
