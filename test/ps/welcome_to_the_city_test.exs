defmodule Ps.TestHellouer do
  use ExUnit.Case
  import Ps.Hellouer, only: [say_hello: 3]

  test "say hello to John Smith" do
    assert say_hello(["John", "Smith"], "Phoenix", "Arizona") == "Hello, John Smith! Welcome to Phoenix, Arizona!"
  end
end
