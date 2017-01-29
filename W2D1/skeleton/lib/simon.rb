class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

  end

  def take_turn
    show_sequence
    require_sequence
  end

  def show_sequence

  end

  def require_sequence
    # TODO add input error checking
    puts "Repeat the last sequence, one color at a time:"
    input = gets.chomp.split("")
    input.each_with_index do |color, idx| 
      game_over = true if seq[idx] == color
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game

  end
end
