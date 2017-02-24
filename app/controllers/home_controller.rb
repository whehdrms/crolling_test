require 'nokogiri'
require 'open-uri'
class HomeController < ApplicationController
  def index

    @title = Array.new

      0.upto(30) do |d|
      @doc = Nokogiri::HTML(open("http://ndhs.or.kr/2014/sub_promotion/sub3.php?menuidx=49&bname=photo&category=&page=#{d}&search=&key="))
      @doc.css('img').each do |p|
        if p['src'].include?('253x153_99')
          @title << p['src'].split("/")[5]
        else
          next
        end
    end
    end
  end
end
