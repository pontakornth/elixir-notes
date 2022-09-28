# List is basically linked list
[:atom, "strin", 3.2]
# Just like basic linked list, prepend is faster than append.
# Accesss or getting length is O(n) operation.

# ++ means concat
[12, 13] ++ [23, 23]

# -- means substract
# Remove everything that contains on the right
[1, 2, 3, 4, 5] -- [1, 2, 9]
# but only once per value. That means it's possible to duplicate
[1, 2, 3, 4, 5, 5] -- [5]
# Would remains [1,2,3,4,5]

# -- uses strict comparisons so 3.0 can only be substracted by 3.0

# hd = head (first element of this list)
# tl = tail (the rest after hd)
# 1
hd([1, 2, 3])
# [2,3]
tl([1, 2, 3])

# You can also use pattern matching.
[head | tail] = [1, 2, 3, 4, 5, 6, :pitou]
# 1
head
# the rest of it
tail

# Tuples are stored contagious in the memory.
# Faster access but modification is expendsive.
# because Elixir must copy the entire tuple.
{12, 234, 45}

# Tuples are commonly used for returning information
{:ok, "Success"}

# By the way, you can have associate list
[x: 12, y: 998]
[{:x, 12}, {:y, 998}]
# They are the same.

# However, it is preferred to use an actual map like this
# Unordered
%{:foo => "bar", :hello => "World"}
[:x 23, :y 23]
# Adding a duplicate remove the former value
# %{:hello => "Sad}
%{:hello => "World", :hello => "Sad"}


# => is redundant. Let's use something else.
%{hello: "World",}

# You can update a map like this
# %{map | foo: "Bar"}
# But the key must be already in the map.


# Use put instal
map = %{hello: "World"}
new_map = Map.put(map, :hi, "sadk")
