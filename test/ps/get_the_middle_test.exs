defmodule Ps.TestSolution do
  use ExUnit.Case

  import Ps.GetTheMiddle, only: [get_middle: 1]

  test "basic tests single" do
    assert get_middle("testing") == "t"
    assert get_middle("fobar") == "b"
  end

  test "짝수" do
    assert get_middle("test") == "es"
    assert get_middle("wordlist") == "dl"
  end
end
