# 1回のループでcard = {number:1, suit:"spade"}とかを4種類保存する。
# 13回ループして、52枚入れる。

number = 1
cards = []

for number in 1..13 do
  card = {}

  card[:"マーク"] = "♠︎"
  card[:"数字"] = number
  cards << card
end

for number in 1..13 do
  card = {}

  card[:"マーク"] = "❤"
  card[:"数字"] = number
  cards << card
end

for number in 1..13 do
  card = {}

  card[:"マーク"] = "♣"
  card[:"数字"] = number
  cards << card
end

for number in 1..13 do
  card = {}

  card[:"マーク"] = "♦"
  card[:"数字"] = number
  cards << card
end



cards.each do |card|
  puts "#{card.to_a}"
end