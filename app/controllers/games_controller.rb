require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:guess]}"
    user_serialized = URI.open(url).read
    @results = JSON.parse(user_serialized)
  end
end
