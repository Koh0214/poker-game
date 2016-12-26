def make_deck(deck)
  suits = ["♦︎", "♣", "♠︎", "❤"]

  suits.each do |suit|
    num = 1
    for num in 1..13
      card = {suit: suit, number: num}
      deck << card
      num += 1
    end
  end
end

def deal_cards(deck)
  player = []
  cpu = []
  
  puts "-------あなたのカード--------"
  player = deck.shuffle![0..4]
  deck.slice!(0..4)
  puts player

  puts "--------cpuのカード-------------"
  cpu = deck.shuffle![0..4]
  deck.slice!(0..4)
  puts cpu

  player_match_number = match_judge(player)
  cpu_match_number = match_judge(cpu)

  puts "プレイヤーは#{player_match_number}枚マッチしました。"
  puts "cpuは#{cpu_match_number}枚マッチしました。"

  # puts "--------残りのカード------------"
  # puts deck.sort{|a, b| a[:number] <=> b[:number] }

end

def match_judge(hands)

  hands_number = []

  hands.each do |hand|
    hands_number << hand[:number]
  end

  match_number = 0
  match_numbers = []

  for index in 1..13 do
    match_number = hands_number.count(index)  
    match_numbers << match_number
  end

  return match_numbers.max

end


deck = []

loop do
  puts "ポーカー ver.1"
  puts "[1]遊ぶ", "[2]終了"
  com = gets.to_i
  case com
    when 1
      make_deck(deck)
      deal_cards(deck)
    when 2
      break
    else
      puts "無効なコマンドです"
  end
end