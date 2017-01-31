class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn 
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    @sequence_length += 1
    round_success_message unless game_over
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    # TODO add input error checking
    puts "Repeat the last sequence, one color at a time:"
    input = gets.chomp.split("")
    input.each_with_index do |color, idx| 
      game_over = true unless seq[idx] == color
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Good job! Now see if you can get another..."
  end

  def game_over_message
    puts "NOPE. WRONG. FAIL. Let's start over and try again"
  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end

