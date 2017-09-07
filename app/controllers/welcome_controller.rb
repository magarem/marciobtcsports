class WelcomeController < ApplicationController
  def homepage
    @slide = Slide.all
    @midium = Midium.all
    @move = Move.all
    @players = Player.all
  end
  def about
  end
end
