require 'mechanize'

class Scraper

  def initialize
    agent = Mechanize.new
    @page = agent.get('http://www.imdb.com/list/ls072706884/')
  end

end