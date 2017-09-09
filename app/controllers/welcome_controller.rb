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
    @player_id = params[:player_id]
    @array_position = Hash.new
    if @player_id.to_s.empty?
      @array_position[:goalkeeper] = Player.where(position: :goalkeeper)
      @array_position[:defenders] = Player.where(position: :defenders)
      @array_position[:full_back] = Player.where(position: :full_back)
      @array_position[:wing_back] = Player.where(position: :wing_back)
      @array_position[:midfielders] = Player.where(position: :midfielders)
      @array_position[:defending] = Player.where(position: :defending)
      @array_position[:central] = Player.where(position: :central)
      @array_position[:playmaker] = Player.where(position: :playmaker)
      @array_position[:wingers] = Player.where(position: :wingers)
      @array_position[:striker] = Player.where(position: :striker)
      @array_position[:second_forward] = Player.where(position: :second_forward)
    else
      @player = Player.where(id: @player_id).first
    end
  end

  def midium
    @midium = Midium.all
  end
end
