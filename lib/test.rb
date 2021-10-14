
require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all"))   
puts page   # => Nokogiri::HTML::Document


#xpath("//tbody")

#//tobody//tr (modifié)

'//tbody//tr//td[2]//a[2]'

puts page.xpath('//tbody//tr//td[2]//a[2]').each do |node| names_crypto.push(node.text) end



crypto_names= page.xpath('//td[@class ="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]/div/text()')


crypto_values = page.xpath('//td[@class ="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]/a/text()')


puts crypto_names
puts crypto_values