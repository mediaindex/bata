class WelcomeController < ApplicationController
  def index
  	@films = Film.order('Created_at asc')
  	@actors = Actor.order('Created_at asc')
  	@articles = Article.order('Created_at asc')
  	end
end
