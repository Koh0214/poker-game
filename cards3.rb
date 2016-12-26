def make_deck
  deck = []
  suits = ["♦", "♣", "♠", "❤"]

  suits.each do |suit|
    num = 1
    for num in 1..13
      card = {suit: suit, number: num}
      deck << card
      num += 1
    end
  end

  puts deck
  return deck
end

def make_hands(deck)
# 1人目 ランダムで5つの数字を出す
# その数字をused_numbers = [] に突っ込む
# 2人目のランダム5つの数字を出して、used_numbersと一致しないか確かめる
  used_numbers = []
  hands = []
  hand_number = 0

  while  hand_number != 5

    card_number = rand(52)
    
    if used_numbers.include?(card_number)
      hands << deck[card_number]
      used_numbers << card_number
      hand_number += 1
      else
    end

  end

  puts "-----------------my hands-------------------------"
  puts hands
end

make_deck

make_hands(deck)
