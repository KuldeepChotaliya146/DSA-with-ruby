# The cost of a stock on each day is given in an array. Find the maximum profit that you can make by buying and selling on those days. If the given array of prices is sorted in decreasing order, then profit cannot be earned at all.


def max_profit(arr)
  min = arr[0]
  profit = 0
  buy_day = -1
  sell_day = -1
  for i in (1..arr.size - 1)
    new_profit = arr[i] - min
    if new_profit > profit
      profit = new_profit 
      sell_day = i
    end
    if min > arr[i]
      min = arr[i]
      buy_day = i
    end
  end
  p "buy day---->#{buy_day}"
  p "sell day----->#{sell_day}"
  profit
end

p "Find maximum profit on buy on which date and sell on which date-->#{max_profit([100, 180, 260, 310, 40, 535, 695])}"