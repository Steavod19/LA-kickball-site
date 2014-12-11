require 'sinatra'
require 'json'
require 'pry'

get '/' do
  @roster = JSON.parse(File.open('roster.json', 'r').read)
  @team = @roster.keys

  erb :index
end


get '/team/:team' do
  @roster = JSON.parse(File.open('roster.json', 'r').read)

  erb :team
end

get '/position/:position' do
  @roster = JSON.parse(File.open('roster.json', 'r').read)
  @team = @roster.keys

  erb :position
end
