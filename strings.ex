# Strings are basically sequence of bytes
string = <<104, 101, 108, 108, 111>>

# You can concat string with <>
string <> <<0>>

# Return code point of string. The ilt
# á
string = "\u0061\u0301"
# Return codepoint (two character)
String.codepoints(string)
# return graphmeme (one character)
String.graphemes(string)

# Length of string
String.length("Long long man")

# Replace (original, pattern to replace, replacement)
String.replace("Something is right.", "right", "wrong")

# Duplication
# thisthis
String.duplicate("this", 2)

# Anagram detector
# Strings are anagrams if they have same characters.
defmodule Anagram do
  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end

  def anagram?(str1, str2) when is_binary(str1) and is_binary(str2) do
    sort_string(str1) == sort_string(str2)
  end
end
