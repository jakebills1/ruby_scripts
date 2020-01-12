require 'nokogiri'
require 'open-uri'
require 'pry'
page = Nokogiri::HTML(open("http://en.wikipedia.org"))
puts page.title
binding.pry
