IO.puts("start")

IO.write("""
  foobar
  nia
""")

"#{:math.pi()}" |> IO.inspect()

str = 'wombat'
is_list str |> IO.inspect()
