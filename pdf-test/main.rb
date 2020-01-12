require 'pdf-reader'
reader = PDF::Reader.new('test.pdf')
puts reader.info
