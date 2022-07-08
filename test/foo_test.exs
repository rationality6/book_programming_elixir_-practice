defmodule FooTest do
  use ExUnit.Case
  doctest Foo

  test "foo test" do
    assert(Foo.hello() == :world)
  end
end
