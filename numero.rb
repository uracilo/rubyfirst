# El usuario ingresa dos números
# se debe determinar cuál es el mayor

puts "ingrea un numero"
numero1 = gets.chomp.to_f
puts "ingresa otro numero"
numero2 = gets.chomp.to_f
puts "es mayor el primer numero" if numero1 > numero2
puts "es mayor el segundo numero" if numero1 < numero2
puts "son iguales" if numero1 = numero2