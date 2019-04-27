def stock_picker(prices)
  price_pairs = prices.combination(2).to_a
  final_pair = price_pairs.select { |pair| pair[0] < pair[1] }
                          .max_by { |pair| pair[1] - pair[0] }
  p final_pair.map { |price| prices.index(price) }
end

stock_picker([17,3,6,9,15,8,6,1,10])
