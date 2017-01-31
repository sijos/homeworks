class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
    @cups[6], @cups[13] = [], []
  end

  def place_stones
    arr = Array.new(14)
    arr.map.with_index do |el, idx| 
      el = [:stone, :stone, :stone, :stone] unless idx == 6 || idx == 13
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos.between?(1, 12)
  end

  def make_move(start_pos, current_player_name)
    i = start_pos + 1
    until cups[start_pos].empty?
      unless i == (current_player_name == @name2 ? 6 : 13)
        cups[i] << cups[start_pos].pop
      end
      (i + 1 > 13) ? i = 0 : i += 1
    end
    render
    i == 0 ? next_turn(13) : next_turn(i - 1)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif cups[ending_cup_idx].count == 1
      return :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if cups[0..5].all? {|cup| cup.empty?}
    return true if cups[6..12].all? {|cup| cup.empty?}
    false
  end

  def winner
    case cups[6] <=> cups[13]
    when -1
      @name2
    when 0
      :draw
    when 1
      @name1
    end
  end
end
