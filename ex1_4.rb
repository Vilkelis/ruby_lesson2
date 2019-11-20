# Ex 1.
months = { 'январь': 30,
           'февраль': 28,
           'март': 31,
           'апрель': 30,
           'май': 31,
           'июнь': 30,
           'июль': 31,
           'август': 31,
           'сентябрь': 30,
           'октябрь': 31,
           'ноябрь': 30,
           'декабрь': 31 }

puts 'Месяцы в которых 30 дней:'

months.each do |month, days|
  puts month if days == 30
end

# Ex 2.
puts 'от 10 до 100 с шагом 5'

result_array = []
(10..100).step(5).each { |val| result_array << val }

puts result_array

# Ex 3.
result_array = [0]
f = 1

while f < 100
  result_array << f
  f = result_array[-2] + result_array[-1]
end

puts 'Числа Фибоначчи:'
puts result_array

# Ex 4.
puts 'Гласные буквы'

res = {}
g = %w[a e i o u y]
puts g
('a'..'z').each_with_index do |val, index|
  res[val] = index + 1 if g.include?(val)
end

puts res.to_s

# Ex 5.
puts 'Порядковый номер дня в году'
puts 'День:'
day = gets.chomp.to_i
puts 'Месяц:'
month = gets.chomp.to_i
puts 'Год:'
year = gets.chomp.to_i

months = months.to_a
if month == 1
  res = day
else
  res = (1..month - 1).inject(0) { |sum, n| sum + months[n - 1][1] } + day
  if month > 2 &&
     (((year % 4).zero? && !(year % 100).zero?) || (year % 400).zero?)
    res += 1
  end
end
puts "номер дня=#{res}"
