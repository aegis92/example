require 'stock_quote'
require 'eu_central_bank'
require 'money'

def exchange(stock, from, to)
   
   stock = stock.to_i if stock.is_a?(String)  # stock.l 을 string으로 받아옴

#   if stock.is_a?(String)
#      stock = stock.to_i  # stock.l 을 string으로 받아옴
#   end
   bank = EuCentralBank.new
   
   bank.update_rates   # Data를 update를 시켜줌
   
   return stock * bank.exchange( 100, from, to)

   #return stock.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

ARGV.each do |com_nam|
   stock = StockQuote::Stock.quote(com_nam)

   puts "#{stock.name} => $#{stock.l} / #{exchange  stock.l, 'USD' ,'KRW' }원"

   m = Money.new(1000, 'USD')
   m_format = m.format
end