require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/functions.rb'


get '/' do
  erb(:home)
end

get '/instructions' do
  erb(:instructions)
end

get '/equal/:string1/:string2' do
  @result = equal(params[:string1], params[:string2])
  erb(:result)
end

get '/palindrome/:string' do
  @result = palindrome(params[:string])
  erb(:result)
end

get '/isogram/:string' do
  @result = isogram(params[:string])
  erb(:result)
end

get '/anagram/:string1/:string2' do
  @result = anagram(params[:string1], params[:string2])
  erb(:result)
end
