# noinspection RubyInstanceVariableNamingConvention,RubyParameterNamingConvention
class Player
  # @return [Integer]
  attr_reader :id

  # @return [TrueClass, FalseClass]
  attr_reader :me

  # @return [TrueClass, FalseClass]
  attr_reader :strategy_crashed

  # @return [Integer]
  attr_reader :score

  # @return [Integer]
  attr_reader :remaining_action_cooldown_ticks

  # @param [Integer] id
  # @param [TrueClass, FalseClass] me
  # @param [TrueClass, FalseClass] strategy_crashed
  # @param [Integer] score
  # @param [Integer] remaining_action_cooldown_ticks
  def initialize(id, me, strategy_crashed, score, remaining_action_cooldown_ticks)
    @id = id
    @me = me
    @strategy_crashed = strategy_crashed
    @score = score
    @remaining_action_cooldown_ticks = remaining_action_cooldown_ticks
  end
end