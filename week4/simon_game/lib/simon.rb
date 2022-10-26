class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn until @game_over
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    @sequence_length += 1
    self.require_sequence
    self.round_success_message unless @game_over
    self.add_random_color
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    @seq <<  ["red", "blue", "yellow", "green"].sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
