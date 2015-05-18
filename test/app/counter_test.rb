require_relative '../test_helper'

describe Counter do

  let(:n){ Counter.numbers }  


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

  it 'increments' do
    assert_equal '0', n.val
    n.increment
    assert_equal '1', n.val
    8.times { n.increment }
    assert_equal '9', n.val
    n.increment
    assert_equal '10', n.val
  end

  let(:b){ Counter.binary }  
  it 'does binary' do
    assert_equal '0', b.val
    b.increment
    assert_equal '1', b.val
    b.increment
    assert_equal '10', b.val
    b.increment
    assert_equal '11', b.val
    b.increment
    assert_equal '100', b.val
    b.increment
    assert_equal '101', b.val
    b.increment
    assert_equal '110', b.val
    b.increment
    assert_equal '111', b.val
    b.increment
    assert_equal '1000', b.val
  end

  let(:t){ Counter.trinary }  
  it 'does trinary' do
    assert_equal '0', t.val
    t.increment
    assert_equal '1', t.val
    t.increment
    assert_equal '2', t.val
    t.increment
    assert_equal '10', t.val
    t.increment
    assert_equal '11', t.val
    t.increment
    assert_equal '12', t.val
    t.increment
    assert_equal '20', t.val
    t.increment
    assert_equal '21', t.val
    t.increment
    assert_equal '22', t.val
    t.increment
    assert_equal '100', t.val
  end

  let(:a){ Counter.alphabet }
  it 'alphabet counting - playing around' do
    assert_equal 'a', a.val
    25.times { a.increment }
    assert_equal 'z', a.val
    a.increment
    assert_equal 'ba', a.val
    # the above is interesting
    # I always figured 'alphabet counting'..
    # x, y, z, aa, ab, ...
    # was the same algorithm as counting numbers..
    # 8, 9, 10, 11, 
    # but I never really thought about it.
    #
    # having explored this kata, it's different.

    25.times { a.increment }
    assert_equal 'bz', a.val
    a.increment
    assert_equal 'ca', a.val

  end
end

