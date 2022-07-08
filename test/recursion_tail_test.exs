defmodule RecursionTailTest do
  use ExUnit.Case
  doctest RecursionTail

  test 'recursion_tail 5' do
    assert RecursionTail.factorial(5) == 15
  end

  test 'recursion_tail 25' do
    assert RecursionTail.factorial(25) == 325
  end

  test 'recursion_tail 55' do
    assert RecursionTail.factorial(55) == 1540
  end
end
