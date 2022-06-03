case File.open("mix.exs") do
  {:ok, file} ->
    IO.puts("First line: #{IO.read(file, :line)}")

  {:error, reason} ->
    IO.puts("Failed to open file: #{reason}")
end

case File.open("") do
  {:ok, file} ->
    IO.puts("First line: #{IO.read(file, :line)}")

  {:error, reason} ->
    IO.puts("Failed to open file: #{reason}")
end
