# DESCRIPTION:
# Create a function called _if which takes 3 arguments: a boolean value bool and 2 functions (which do not take any parameters): func1 and func2

# When bool is truth-ish, func1 should be called, otherwise call the func2.
defmodule Algo.Result do
  def _if(bool, func1, func2) do
    cond do
      bool == true ->
        func1.()
      bool == false ->
        func2.()
    end
  end
end

Algo.Result._if(true, fn -> IO.puts("true") end, fn -> IO.puts("false") end)
Algo.Result._if(false, fn -> IO.puts("true") end, fn -> IO.puts("false") end)
