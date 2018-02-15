require 'rubygems'
require 'nokogiri'
require 'open-uri'

class CryptosSearch
  attr_accessor :res_name, :res_price

  def initialize
    @res_name = []
    @res_price = []

    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    
    cryptomonaies = page.css("#currencies-all > tbody:nth-child(2) tr")
    cryptomonaies.each do |cryptomonaie|
    @res_name << cryptomonaie.css("a.currency-name-container").text
    @res_price << cryptomonaie.css("a.price").text
    end
  end
  
end