# Functions-1
list_concat = fn list1, list2 -> list1 ++ list2 end
IO.inspect list_concat.([:a, :b], [:c, :d])
sum = fn a, b, c -> a + b + c end
IO.inspect sum.(1, 2, 3)
pair_tuple_to_list = fn {a, b} -> [a, b] end
IO.inspect pair_tuple_to_list.({1234, 5678})

# Functions-2
fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

# Functions-3
fizz_buzz_caller = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts fizz_buzz_caller.(10) # Buzz
IO.puts fizz_buzz_caller.(11) # 11
IO.puts fizz_buzz_caller.(12) # Fizz
IO.puts fizz_buzz_caller.(13) # 13
IO.puts fizz_buzz_caller.(14) # 14
IO.puts fizz_buzz_caller.(15) # FizzBuzz
IO.puts fizz_buzz_caller.(16) # 16


# Functions-4
prefix = fn s1 ->
  fn s2 -> "#{s1} #{s2}" end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")

# Functions-5
IO.inspect Enum.map [1, 2, 3, 4], &(&1 + 2)
Enum.map [1, 2, 3, 4], &(IO.inspect(&1))