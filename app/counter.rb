class Counter

  attr_accessor :values,  :val

  def initialize(values)
    @values = values.split('')
    @val = @values.first
  end



  def _char_at pos
    @val[_switched_val_index(pos)]
  end

  def _switched_val_index pos
    ((@val.length - 1) - pos)
  end

end
