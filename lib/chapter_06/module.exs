defmodule Outer do
  defmodule Inner do
    def inner_func do
      "inner_func"
    end
  end

  def outer_func do
    "outer_func"
  end
end

Outer.outer_func() |> IO.inspect()
Outer.Inner.inner_func() |> IO.inspect()
