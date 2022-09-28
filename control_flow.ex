# if/2 is basically if but with only one choice
if 12 > 0 do
  "The universe is here."
end

# if else
if 24 > 0 do
  "fuck"
else
  "999"
end

# unless is negative if.
# No else
unless "rtrt" do
  "The universe breaks"
end

# only nil and false are falsy value.
# This is "not" but worse
case true do
  true -> false
  false -> true
  _ -> 999

# You can use pattern matching in case
case {:ok, %{message: "Good job"}} do
  {:ok, %{message: message}} -> message
  {:error, _} -> "Error"
  _ -> "Invalid input"
end

# If you only care about value, use cond
cond do
  false -> "No"
  nil -> "Not"
  true -> "Match"
  # True or else are both truthy.
  :else -> "CAnnot reach"
end

# with is a weird one
# it is for more complicated case
a_map = %{name: "Pontakorn", lastname: "Paesaeng"}
with  {:ok, first} <- Map.fetch(a_map, :name),
      {:ok, last} <- Map.fetch(a_map, :lastname),
 do: last <> "," <>
