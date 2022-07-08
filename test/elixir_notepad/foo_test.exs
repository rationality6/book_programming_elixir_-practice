defmodule ElixirNotepad.FooTest do
  use ExUnit.Case
  doctest ElixirNotepad.Foo

  import ElixirNotepad.Foo, only: [hello: 0]

  test "foo test" do
    assert(hello() == :world)
  end
end
