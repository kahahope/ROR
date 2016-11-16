puts "Укажите значение первой стороны треугольника"
a = gets.chomp.to_f
puts "Укажите значение второй стороны треугольника"
b = gets.chomp.to_f
puts "Укажите значение третьей стороны треугольника"
c = gets.chomp.to_f

if a > b && a > c
  hypotenuse = a
  first_cathetus = b
  second_cathetus = c
elsif b > a && b > c
  hypotenuse = b
  first_cathetus = a
  second_cathetus = c
elsif c > a && c > b	
  hypotenuse = c
  first_cathetus = a
  second_cathetus = b
end

if a == b && b == c && a == c
  puts "Это равносторонний треугольник"
elsif a == b || b == c || a == c
  puts "Это равнобедренный треугольник"
end

if hypotenuse**2 == first_cathetus**2 + second_cathetus**2
  puts "Это прямоугольный треугольник"
else
  puts "Это не прямоугольный треугольник"
end