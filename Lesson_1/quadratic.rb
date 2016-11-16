puts "Укажите значение a"
a = gets.chomp.to_f
puts "Укажите значение b"
b = gets.chomp.to_f
puts "Укажите значение c"
c = gets.chomp.to_f

d = b**2 - 4 * a * c

if d == 0
  x = -b / 2 * a
  puts "Уравнение имеет один корень, который равен #{x}"
elsif	
  x1 = (-b + Math.sqrt(d)) / 2 * a
  x2 = (-b - Math.sqrt(d)) / 2 * a
  puts "Уравнение имеет два корня, которые равны #{x1} и #{x2} соответственно"
elsif d < 0
  puts "Корней нет"
end