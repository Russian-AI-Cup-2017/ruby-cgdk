require './model/game'
require './model/move'
require './model/player'
require './model/world'

class MyStrategy
  # @param [Player] me
  # @param [World] world
  # @param [Game] game
  # @param [Move] move
  def move(me, world, game, move)
    if world.tick_index == 0
      move.action = ActionType::CLEAR_AND_SELECT
      move.right = world.width
      move.bottom = world.height
    end

    if world.tick_index == 1
      move.action = ActionType::MOVE
      move.x = world.width / 2.0
      move.y = world.height / 2.0
    end
  end
end