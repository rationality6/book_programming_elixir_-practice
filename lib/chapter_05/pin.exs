defmodule Greeter do
  def for(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you"
    end
  end
end

mr_valim = Greeter.for("Jose", "Oi!")
mr_valim.("Jose") |> IO.inspect()
mr_valim.("Dave") |> IO.inspect()
