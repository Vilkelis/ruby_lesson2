# Ex 5.
basket = {}
loop do
  puts 'Товар:'
  good = gets.chomp
  break if good == 'стоп'

  puts 'Цена:'
  price = gets.chomp.to_f
  puts 'Кол-во:'
  qty = gets.chomp.to_f
  basket[good] = { price: price, qty: qty }
end

puts 'Ваша корзина:'
basket.each do |key, value|
  puts "#{key} цена: #{value[:price]} кол-во: #{value[:qty]} " \
       "сумма: #{value[:price] * value[:qty]}"
end

total = basket.inject(0) { |sum, n| sum + n[1][:price] * n[1][:qty] }
puts "Итоговая сумма= #{total}"
