# 1回のループでcard = {number:1, suit:"spade"}とかを4種類保存する。
# 13回ループして、52枚入れる。


cards = []
loops = 1


while loops != 5 do
  case loops 
    when 1
      card[:"マーク"] = "♠︎"
    when 2
      card[:"マーク"] = "♣"
    when 3
      card[:"マーク"] = "❤"
    else
      card[:"マーク"] = "♦"
  end

  number = 1

  for number in 1..13 do
    card = {}
    card[:"数字"] = number
    cards << card    
  end

  loops += 1
end



cards.each do |card|
  puts "#{card.to_a}"
end