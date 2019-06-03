require 'nokogiri'
require 'httparty'
require 'pry'

url = "https://swapi.co/api/"

res = HTTParty.get(url)

binding.pry
