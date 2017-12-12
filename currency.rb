require 'eu_central_bank'

def exchange(price, from, to)
	
	bank = EuCentralBank.new

	bank.update_rates

	#return bank.exchange(price, from, to)

	bank.exchange(price, from, to)

end

puts exchange(1000, 'USD', 'KRW')