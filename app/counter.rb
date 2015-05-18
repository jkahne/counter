class Counter

  attr_accessor :values,  :val

  def initialize(values)
    @values = values.split('')
    @val = @values.first
  end



  def _next_character_for pos
    this_char = _char_at(pos)
    new_char =  if this_char == @values.last
                  new_char = @values.first
                else
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

end
