#Max Profit Sample Problem

# Suppose we could access yesterday's stock prices as an array, where:

# The indices are the time in minutes past trade opening time, which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

# Write an efficient function that takes stock_prices_yesterday and returns the best profit 
# I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

def max_profit(hash)

  if hash.length < 2
    # raise error if there are less than two prices b/c you need to "buy" and "sell" at two prices to profit
    raise "Oops! You need at least two prices to calculate a profit."
  else

  end
end