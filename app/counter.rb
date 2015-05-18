class Counter

  attr_accessor :values,  :val

  def self.numbers; Counter.new('0123456789'); end
  def self.binary; Counter.new('01'); end
  def self.trinary; Counter.new('012'); end
  def self.alphabet; Counter.new('abcdefghijklmnopqrstuvwxyz'); end

  def initialize(values)
    @values = values.split('')
    @val = String.new(@values.first)
  end

  def increment(pos = 0)
    @ptr = pos
    _increment_char_at @ptr
    if _this_char_flipped?
      @ptr = @ptr + 1
      if _no_char_to_increment?
        _grow
      end
      increment @ptr
    end
  end

  def _next_character_for pos
    this_char = _char_at(pos)
    new_char =  if this_char == @values.last
                  @flipped =  true
                  new_char = @values.first
                else
                  @flipped = false
                  position_of_this_char = @values.index(this_char)
                  next_char_in_values = @values[position_of_this_char + 1]
                  new_char = next_char_in_values
                end

  end

  def _char_at pos
    @val[_switched_val_index(pos)]
  end

  def _switched_val_index pos
    ((@val.length - 1) - pos)
  end

  def _increment_char_at pos
    @val[_switched_val_index(pos)] = _next_character_for(pos)
  end

  def _this_char_flipped?
    @flipped
  end

  def _grow
    @val = @values.first + @val
  end


  def _no_char_to_increment?
    @ptr == @val.length
  end

end
