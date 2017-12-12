require 'launchy'

Launchy.open("www.hello.co.kr.hello")

keys = ["수지", "아이유", "워너원", "BTS"]

url = "https://search.naver.com/search.naver?query="

keys.each do |key|
	final_url = url+key
	puts final_url
end
