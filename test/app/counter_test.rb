require_relative '../test_helper'

describe Counter do

  let(:n){ Counter.new('0123456789') }  


  it '_char_at (i want 0 on the far right)' do
    n.val = '1234567890'
    assert_equal '0', n._char_at(0)
    assert_equal '9', n._char_at(1)
    assert_equal '1', n._char_at(9)
  end

  it ' _next_character_for' do
    n.val = '1234567890'
    assert_equal '0', n._char_at(0)
    assert_equal '1', n._next_character_for(0)

    assert_equal '9', n._char_at(1)
    assert_equal '0', n._next_character_for(1)
  end

end

