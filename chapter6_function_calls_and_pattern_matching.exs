# ModulesAndFunctions-1, ModulesAndFunctions-3
defmodule Times do

  def double(n) do
    n * 2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    double(n) + double(n)
  end

end

# ModulesAndFunctions-2
# iex chapter6_function_calls_and_pattern_matching.exs
# or
# iex> c "chapter6_function_calls_and_pattern_matching.exs"


defmodule MyModule do

  # ModulesAndFunctions-4
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)

  # ModulesAndFunctions-5
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

end

IO.puts "Sum from 1 to 10 is #{MyModule.sum(10)}"
IO.puts "Greatest Common Divisor of 45 and 105 is #{MyModule.gcd(45, 105)}"