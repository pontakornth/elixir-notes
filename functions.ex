# anonymous function can be called using dot
add_three = fn x -> x + 3 end
add_three.(3)

# Or use &
add_two = &(&1 + 2)
add_two.(23)

# In Elixir, named functions must be defined in a module.
# This file is not about module so we will get it quick.
defmodule Functions do
  def hello(name) do
    "hello " <> name
  end

  def hello_one_line(name), do: "Hello " <> name

  # Pattern matching
  def hello_with_name(%{name: name}) do
    "hello #{name}"
  end

  # Function can have different arity
  # hello/0
  # The function above is hello/1
  def hello do
    "hello, I am Most."
  end

  # They are treated as a different function unlike other languages.

  def hi(%{name: person_name} = person) do
    # person does not know about anything else besides everything in the match
    IO.inspect(person)
    "hi #{person_name}"
  end

  # if person is swapped, IO.inspect will inspect the entire object instead.

  defp private_hello(name) do
    "Hello ,#{name}, I have some secret"
  end

  def with_guard(name) when is_binary(name) do
    "hello, #{name} is a binary."
  end

  def with_guard(name) when is_list(name) do
    "hello, #{name} is a list."
  end

  def with_guard(name) do
    "no"
  end

  def default_arg(name, language \\ "en") do
    "Name in #{language}"
  end

  # you can't have both guard and default in the same function but you can do this
  def default_arg_2(name, language \\ "th")

  def default_arg_2(name, language) when is_list(name) do
    "I am too lazy to write thisg"
  end

  def shout(name) do
    name |> String.upcase() |> String.split()
  end
end
