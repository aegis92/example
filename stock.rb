require 'stock_quote'

#items = ['aapl', 'tsla', 'msft', 'fb', 'googl', '9984', '005930']

items = ['tsla']

items.each do |item|

	item.chomp!
	
	item_stock = StockQuote::Stock.quote(item)

	puts item_stock.symbol
	puts item_stock.exchange
	puts item_stock.id
	puts item_stock.t
	puts item_stock.e
	puts item_stock.name
	puts item_stock.f_reuters_url
	puts item_stock.f_recent_quarter_date
	puts item_stock.f_annlyal_date
	puts item_stock.f_ttm_date
	puts item_stock.financials
	puts item_stock.kr_recent_quarter_date
	puts item_stock.kr_annual_date
	puts item_stock.kr_ttm_date
	puts item_stock.c
	puts item_stock.l
	puts item_stock.cp
	puts item_stock.ccol
	puts item_stock.op
	puts item_stock.hi
	puts item_stock.lo
	puts item_stock.vo
	puts item_stock.avvo
	puts item_stock.hi52
	puts item_stock.lo52
	puts item_stock.mc
	puts item_stock.pe
	puts item_stock.fwpe
	puts item_stock.beta
	puts item_stock.eps
	puts item_stock.dy
	puts item_stock.ldiv
	puts item_stock.shares
	puts item_stock.instown
	puts item_stock.eo
	puts item_stock.sid
	puts item_stock.sname
	puts item_stock.iid
	puts item_stock.iname
	puts item_stock.related
	puts item_stock.summary
	puts item_stock.management
	puts item_stock.moreresources
	puts item_stock.events

end

# __END__
# aapl
# tsla
# msft
# fb
# googl
# 9984
# 005930
# 6758
# JWEL