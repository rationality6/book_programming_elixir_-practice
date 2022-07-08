defmodule Src.RecursionAdderTest do
  use ExUnit.Case
  doctest Src.RecursionAdder

  import Src.RecursionAdder, only: [adder: 1]

  test 'adder 5' do
    assert adder(5) == 15
  end

  test 'adder 15' do
    assert adder(15) == 120
  end

end
