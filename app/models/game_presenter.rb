class GamePresenter
  attr_reader :game
  def inititalize(game_id)
    @game = Game.find(game_id)
  end

  def player_1
    game.player_1
  end

  
end
