# mix run -e 'ElixirNotepad.run()'
# mix run -e 'ElixirNotepad.httpoison_test()'
defmodule ElixirNotepad do
  @heroku_url "http://httparrot.herokuapp.com/get"

  def run() do
    IO.inspect("I'm here")
  end

  def httpoison_test(url \\ @heroku_url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts(body)

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
