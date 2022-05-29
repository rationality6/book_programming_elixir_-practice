fun1 = fn -> fn -> "Hello" end end
fun1.() |> IO.inspect()
fun1.().() |> IO.inspect()

greeter = fn name -> fn -> "Hello #{name}" end end
greeter.("Hyun") |> IO.inspect()
greeter.("Hyun").() |> IO.inspect()

add_n = fn n -> fn other -> n + other end end
add_two = add_n.(2)
add_five = add_n.(5)

add_two.(3) |> IO.inspect()
add_five.(7) |> IO.inspect()

prefix = fn pre -> fn name -> "#{pre} #{name}" end end
mrs = prefix.("Mrs")
mrs.("Smith") |> IO.inspect()
mrs.("Hyun") |> IO.inspect()

prefix.("Elixir").("Rocks") |> IO.inspect()
