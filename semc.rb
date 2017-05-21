require 'open-uri'
require 'Nokogiri'

def get_aqi
  uri = 'http://www.semc.com.cn/aqi/home/Index.aspx'
  @doc = Nokogiri::HTML(open(uri))
  return @doc.search('span.big').first.content.gsub(/\s+/, "")
end

puts get_aqi
