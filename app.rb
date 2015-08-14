require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  @word = Word.new(params.fetch('word').capitalize!())
  @word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

post('/word/:id') do
  @definition = params.fetch('definition')
  @word = Word.find(params.fetch('word_id'))
  erb(:word)
end
