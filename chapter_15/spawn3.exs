defmodule Spawn3 do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
        greet()
    end
  end
end

# client side
pid = spawn(Spawn3, :greet, [])
send(pid, {self(), "World"})

receive do
  {:ok, message} -> IO.puts(message)
end

# second try
send(pid, {self(), "Elixir"})

receive do
  {:ok, message} -> IO.puts(message)
after
  500 ->
    IO.puts("The greeter has gone away")
end
