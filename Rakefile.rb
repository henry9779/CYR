require 'net/http'
require 'json'
require 'byebug'
require 'nokogiri'
require 'open-uri'

# task :top <number> do
  # 撈出所有資料
  doc = Nokogiri::HTML(URI.open('https://www.alexa.com/topsites'))
  doc.search('//*[@id="alx-content"]/div[1]/section[2]/span/span/div/div/div[2]').each do |link|
    puts link.content
  end
  # 比對使用者輸入的數字
  # 如果小於 50 就顯示輸入的排名網址
  # 如果大於 50 顯示請輸入1-50
# end

# task :country <country> do
  # 下 CLI country(country)，選取國家
  # doc = Nokogiri::HTML(URI.open('https://www.alexa.com/topsites/countries'))
  # 如果沒有，顯示查無資料
  # 如果有，去爬該國家的前 20 名網址
  # 顯示網址

# end
