require 'telegram/bot'
require 'dotenv/load'
require_relative 'scraper.rb'

TOKEN = ENV['MyTOKEN']

Telegram::Bot::Client.run(TOKEN) do |bot|
    bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(
              chat_id: message.chat.id,
            text: "Hello, #{message.from.first_name}. \n I'll tell you about the famous cum-outs.")
        when '/stop'
          bot.api.send_message(
              chat_id: message.chat.id,
            text: "Bye, #{message.from.first_name}")
        end
    end
end