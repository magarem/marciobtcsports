class WelcomeController < ApplicationController
  def homepage
    @slide = Slide.all
    @midium = Midium.all
    @move = Move.all
    @players = Player.all
  end
  def about
    @about = About.order("'order' DESC")
  end
  def players
    @player_goalkeeper = Player.where(position: :goalkeeper)
  end
end
