defmodule Src.FibTest do
  use ExUnit.Case
  doctest Src.Fib

  test 'fib 5 and result' do
    assert Src.Fib.fib_calc(10) == 55
  end

  test 'fib 35 and result' do
    assert Src.Fib.fib_calc(35) == 9227465
  end

end
