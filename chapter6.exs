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

# ModulesAndFunctions-6
defmodule Chop do
    
  def guess(number, left..right) when number == left or number == right do
    IO.puts "#{number}"    
  end

  def guess(number, left..right) when number > left and number < right do        
    middle = div(left+right, 2)    
    IO.puts "Is it #{middle}"
    if number >= middle do
      guess(number, middle..right)
    else
      guess(number, left..middle)
    end    
  end    

end

Chop.guess(273, 1..1000)

# ModulesAndFunctions-7

# convert float to string with 2 decimals (Erlang)
:erlang.float_to_list(223.44456, decimals: 2)

# get value of operating system environment variable (Elixir)
System.get_env("PWD")

# return extension component of a file name (Elixir)
Path.extname("dave/test.exs")

# return the process's current working directory (Elixir)
System.cwd()

# convert a string containing JSON into Elixir data structures
# e.g. https://github.com/devinus/poison library

# execute a command in your operating system's shell
System.cmd("whoami", [])
