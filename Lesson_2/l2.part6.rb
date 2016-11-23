basket = {}
id = 1
loop do

  puts "Укажите товар"
  item = gets.chomp

  break if item == "стоп"

  puts "Укажите цену товара"
  price = gets.chomp.to_f

  puts "Укажите количество товара"
  count = gets.chomp.to_f

  basket[id] = { name: item, price: price, count: count}

  id +=  1
end

total_price = []

basket.each { |id, val| puts "Сумма за #{id} - #{val[:name]}: #{val[:price] * val[:count] }"
total_price << val[:price] * val[:count]

total = total_price.inject(0) { |sum, price| sum + price }

puts "Общая сумма заказа составляет #{total}"