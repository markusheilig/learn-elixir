
defmodule MyList do
    
    # implemantation of the sum function wihout accumulator
    def sum([]), do: 0
    def sum([head | tail]), do: head + sum(tail)
    
    # ListsAndRecursion-1
    def mapsum(list, func), do: _mapsum(list, func, 0)
    defp _mapsum([], _func, acc), do: acc
    defp _mapsum([head | tail], func, acc) do
        _mapsum(tail, func, func.(head) + acc)
    end

    # ListsAndRecursion-2
    def max([head | tail]), do: _max(tail, head)
    defp _max([], acc), do: acc
    defp _max([head | tail], acc) when head > acc, do: _max(tail, head)
    defp _max([_ | tail], acc), do: _max(tail, acc)

    # ListsAndRecursion-3
    def caesar(list, n), do: _caesar(list, n, [])
    defp _caesar([], _, encrypted), do: encrypted        
    defp _caesar([head | tail], n, encrypted) do
        encrypted_char = rem(head + n - 97, 26) + 97        
        _caesar(tail, n, encrypted ++ [encrypted_char])
    end    

end

sum = MyList.sum [1, 2, 3, 4, 5]
IO.puts "sum is #{sum}"

mapsum = MyList.mapsum [1, 2, 3], &(&1 * &1)
IO.puts "mapsum is #{mapsum}"

max = MyList.max [18, 27, 89, 31, 101, 12]
IO.puts "max is #{max}"

IO.puts MyList.caesar('ryvkve', 13)