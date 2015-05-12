require('sinatra/activerecord')
require('./lib/question')
require('./lib/survey')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/surveys/add') do
  @surveys = Survey.all()
  erb(:surveys)
end
