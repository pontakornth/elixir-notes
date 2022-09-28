# This is about function dealing with enumeration.

# Enum.all? is basically every in js
Enum.all?([1, 2], fn s -> s > 0 end)

# any? is one of the condition
Enum.any?([1, 2], fn s -> s > 0 end)

# chunk_every is chunking into group
Enum.chunk_every([1, 2, 3, 4], 2)

# chunk_by group consequtive item that satisfies the given condition together.
Enum.chunk_by([1, 2, 3, 4, 4, 5, 6], fn s -> rem(s, 2) === 0 end)

# map_every is map but only every n item
# It starts from the first item.
Enum.map_every([1, 2, 3, 4], 2, fn s -> s + 99 end)

# min -- self explanatory
# max -- self explanatory
# However, you can provide a fallback to an empty value.
Enum.min([], fn -> 9 end)

# reduce - same as reduce in JS
Enum.reduce([1, 2, 3], fn current, acc -> current + acc end)
Enum.reduce([1, 2, 3], 0, fn current, acc -> current + acc end)

# sort -- sort it
Enum.sort([9, 8, 7])

# You can provide a comparison function
Enum.sort([9, 8, 7], fn x, y -> x > y end)

# By the way, you can use :asc and :desc for convenience.
Enum.sort([1, 9, 8, 7, 1, 2, 34], :asc)

# uniq -- Filter out duplicate
Enum.uniq([1, 1, 1, 1, 1, 1, 1])

# uniq_by - Same as previous but with a function.

Enum.uniq_by([1, 2, 3], fn x -> rem(x, 2) end)

# Actually it's more useful to explain it with tuple
# get unique x coord. We don't care about y.
Enum.uniq_by([{12, 3}, {99, 23}, {12, 9}, {99, 99}], fn {x, _} -> x end)

# You know? We use function a lot in Elixir.
# So we use another syntax instead
Enum.map([1, 2, 3], &(&1 + 3))
# is equal to
Enum.map([1, 2, 3], fn x -> x + 3 end)

# You can also use it with named function
defmodule Adding do
  def plus_three(x), do: x + 3
end

# They are the same
Enum.map([21, 2, 3], &Adding.plus_three/1)
Enum.map([21, 2, 3], &Adding.plus_three(&1))
