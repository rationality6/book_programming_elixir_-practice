defmodule Algo.MergeTwoTest do
  use ExUnit.Case

  import Algo.MergeTwo, only: [perform: 2]

  test "최종값 비교1" do
    list0 = [1, 5, 9, 10, 15, 20]
    list1 = [2, 3, 8, 13]

    expact = [1, 2, 3, 5, 8, 9, 10, 13, 15, 20]
    result = perform(list0, list1)
    assert result == expact
  end

  test "최종값 비교2" do
    list0 = [1, 5, 9, 10, 15]
    list1 = [2, 3, 8, 13]

    expact = [1, 2, 3, 5, 8, 9, 10, 13, 15]
    result = perform(list0, list1)
    assert result == expact
  end

  test "최종값 비교3" do
    list0 = [1, 5, 9, 10]
    list1 = [2, 3, 8, 13, 20]

    expact = [1, 2, 3, 5, 8, 9, 10, 13, 20]
    result = perform(list0, list1)
    assert result == expact
  end
end
