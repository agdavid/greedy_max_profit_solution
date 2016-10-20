#Max Profit Sample Problem

# Suppose we could access yesterday's stock prices as an array, where:

# The indices are the time in minutes past trade opening time, which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

# Write an efficient function that takes stock_prices_yesterday and returns the best profit 
# I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

# hash1 = { 0=>15, 1=>35, 2=>7, 3=>18, 4=>28, 5=>1 } #max_profit expected is (35-15) = 20

def get_max_profit(hash)

    if hash.length < 2
        # raise error if there are less than two prices b/c you need to "buy" and "sell" at two prices to profit
        raise "Oops! You need at least two prices to calculate a profit."
    else
        #the first min_price will be the first price of the day
        min_price = hash[0]
        # the first max_profit will be the difference between the first and second prices of the day
        # why? these are the first opportunities to "buy" and "sell"
        max_profit = (hash[1]-hash[0])

        # loop through entire hash and update max_profit and min_price accordingly
        hash.each_with_index do |current_price, index|
            # skip the first key-value pair b/c you already have that calculated as the defaults
            if index == 0 then next end
                
            # calculate profit if sold at current price    
            potential_profit = (current_price-min_price)

            # keep the higher profit
            max_profit = [max_profit, potential_profit].max

            # keep the lower price
            min_price = [min_price, current_price].min 
        end

        return max_profit
    end
end