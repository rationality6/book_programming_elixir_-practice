defmodule Src.FizzBuzzTest do
  use ExUnit.Case
  doctest Src.FizzBuzz

  test 'fizzbuzz 1..5 and result' do
    assert Src.FizzBuzz.run(1, 5) == [1, 2, "Fizz", 4, "Buzz"]
  end

  test 'fizzbuzz 1..30 and result' do
    assert Src.FizzBuzz.run(1,30) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14,
      "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26,
      "Fizz", 28, 29, "FizzBuzz"]
  end
end
