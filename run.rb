require './main'
require_relative 'scraper'


parse = Scraper.new
parse.information
bot = TelegramBot.new(TOKEN)
bot.start