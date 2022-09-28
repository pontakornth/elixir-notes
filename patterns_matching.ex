# = is actually match operator
x = 12
# Matches x to 12 because there is nothing else to match to
[head | tail] = [1, 2, 3, 4]

# You can use it with map, tuple , or even list.
# {x, y} = {1, 2}
%{message: message} = %{message: "hello"}

# If you use the same variable, use ^ (pin) operator
^x = 99

# It is useful if you name the paramter of a function to the same as external variable
# We already declared "message"

greet = fn
  (^message) -> "Something"
  (message) -> message
