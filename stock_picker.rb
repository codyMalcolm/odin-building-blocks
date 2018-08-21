def stock_picker(prices)
  max_diff = prices[-1]-prices[0]
  current_winners = [prices.length-1, 0]
  prices.each.with_index{|d, i|
    diff = prices[-1] - d
    current_winners = [i, prices.length-1] if diff > max_diff
    i.upto(prices.length-2) {|n|
      diff = [diff, prices[n]-d].max
      current_winners = [i, n] if diff > max_diff
      max_diff = [max_diff, diff].max
    }
  }
  return current_winners
end

p stock_picker([17,3,6,9,15,8,6,1,10])
