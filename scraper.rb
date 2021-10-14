require 'rubygems'
require 'nokogiri'
require 'httparty'
require 'byebug'
require 'open-uri'

def scraper
    page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
    puts page.class   # => Nokogiri::HTML::Document
    parsed_page = Nokogiri::HTML(unparsed_page)
end

scraper 