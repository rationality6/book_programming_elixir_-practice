defmodule SpawnBasic do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
    end
  end
end

# client side
pid = spawn(SpawnBasic, :greet, [])
send pid, {self(), "World"}


receive do
  {:ok, message} -> IO.puts message
end
