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

  it 'basic _increment_char_at' do
    n.val = '1234567890'
    n._increment_char_at 5
    assert_equal '1234667890', n.val

    n._increment_char_at 9
    assert_equal '2234667890', n.val

    n._increment_char_at 1
    assert_equal '2234667800', n.val
  end

end

