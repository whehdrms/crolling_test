require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free"))
doc.css(".sbj").each do |p|
    puts p
end