require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
  erb(:form)
end

get('/result') do
  @word = params.fetch("word")
  @score = params.fetch("word").scrabble_score()
  erb(:result)
end
