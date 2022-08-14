# Create a method sayHello/say_hello/SayHello that takes as input a name, city, and state to welcome a person. Note that name will be an array consisting of one or more values that should be joined together with one space between each, and the length of the name array in test cases will vary.

# Example:

# say_hello(["John", "Smith"], "Phoenix", "Arizona")
# This example will return the string Hello, John Smith! Welcome to Phoenix, Arizona!

defmodule Ps.Hellouer do
  def say_hello(name, city, state) do
    name_list = Enum.to_list(name) |> Enum.join(" ")
    "Hello, #{name_list}! Welcome to #{city}, #{state}!"
  end
end

# "Phoenix", "Arizona") == "Hello, John Smith! Welcome to Phoenix, Arizona!"
