
defmodule MyList do
    
    def sum([]), do: 0
    def sum([head | tail]), do: head + sum(tail)
    
    def mapsum(list, func), do: _mapsum(list, func, 0)
    defp _mapsum([], _func, acc), do: acc
    defp _mapsum([head | tail], func, acc) do
        _mapsum(tail, func, func.(head) + acc)
    end

end

sum = MyList.sum [1, 2, 3, 4, 5]
IO.puts "sum is #{sum}"

mapsum = MyList.mapsum [1, 2, 3], &(&1 * &1)
IO.puts "mapsum is #{mapsum}"