# crawling sample restaurant informations

require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://www.mangoplate.com/top_lists/1914_seoul2019"))

# doc.css(tag)
doc.css(".toplist_list .with-review .title").each do |x|
  puts x.inner_text
end