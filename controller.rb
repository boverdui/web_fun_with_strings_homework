require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/fancystrings.rb'


get '/' do
  erb(:home)
end

get '/instructions' do
  erb(:instructions)
end

get '/equal/:string1/:string2' do
  @result = FancyString.equal(params[:string1], params[:string2])
  erb(:result)
end

get '/palindrome/:string' do
  @result = FancyString.palindrome(params[:string])
  erb(:result)
end

get '/isogram/:string' do
  @result = FancyString.isogram(params[:string])
  erb(:result)
end

get '/anagram/:string1/:string2' do
  @result = FancyString.anagram(params[:string1], params[:string2])
  erb(:result)
end
