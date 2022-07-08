defmodule Src.FactorialTailTest do
  use ExUnit.Case
  doctest Src.FactorialTail

  import Src.FactorialTail, only: [tail: 1]

  test 'recursion_tail 5' do
    assert tail(5) == 120
  end

  test 'recursion_tail 25' do
    assert tail(25) == 15511210043330985984000000
  end

  test 'recursion_tail 55' do
    assert tail(55) == 12696403353658275925965100847566516959580321051449436762275840000000000000
  end
end
