defmodule Link0 do
  def greet do
    receive do
      {sender, {id, msg}} ->
        send(sender, {:ok, {"#{id}", "Hello #{msg}"}})
    end

    greet()
  end
end

# client

defmodule Client do
  def send_message(pid, msg, n) do
    Enum.each(1..n, fn i ->
      send(pid, {self(), {"#{i}", "World"}})

      receive do
        {:ok, {id, message}} ->
          IO.puts(id)
          IO.puts(message)
      end
    end)
  end
end

pid = spawn(Link0, :greet, [])

Client.send_message(pid, 'foo', 5)
