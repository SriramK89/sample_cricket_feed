require 'nokogiri'
require 'open-uri'

class HomeController < ApplicationController
  def index
    @cricket_news_feed = JSON.parse(Nokogiri::HTML(open('http://pipes.yahoo.com/pipes/pipe.run?_id=tMcVGcqn3BGvsT__2R2EvQ&_render=json')))["value"]["items"]
  end
end
