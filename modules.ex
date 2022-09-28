# In elixir, functions must be defined in a module
defmodule Module do
  # Module attribute
  @greeting "This is an attribute"
  def greeting do
    "Hello, loser"
  end
end

defmodule Module.Nested do
  def greeting do
    "hello, loser"
  end
end

# Module can have a struct defined within
defmodule Module.Struct do
  defstruct name: "Susan", age: 99
  # You can use @derive to protect some field not being inspected
  # Visit ElixirSchool for mored etail
  # Using Nested name a lot is kinda suck. Let's use alias
  alias Module.Nested

  def nested do
    Nested.greeting()
  end

  # require - macro
  # import - function
  # use - require and run __using__ macro
end
