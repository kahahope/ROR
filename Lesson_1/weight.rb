puts "Как Вас зовут?"
name = gets.chomp

puts "Какой у Вас рост?"
height = gets.to_i

ideal_weight = height - 110

if ideal_weight >= 0
  "#{name}, Ваш оптимальный вес #{ideal_weight} кг."
else
  "#{name}, Ваш вес уже оптимален."
end
