require 'nokogiri'
require 'httparty'

url = 'http://finance.naver.com/sise/'

labels = ['KOSPI', 'KOPSDAQ', 'KOSPI200']
keys = ['#KOSPI_now', '#KOSDAQ_now','#KPI200_now']

keywords = {'KOSPI': '#KOSPI_now', 'KOPSDAQ': '#KOSDAQ_now','KOSPI200': '#KPI200_now'}

response = HTTParty.get(url)

page_body = Nokogiri::HTML(response.body)

keywords.map { |keyword, value| puts "#{keyword} :"+page_body.css(value).text }

i = 0

keys.each do |key|
	puts labels[i] + '||||||||||' + page_body.css(key).text
	i += 1
end