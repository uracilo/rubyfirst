puts "ingresa un número"
a = gets.chomp.to_f
if a < 0
puts "es negativo"
elsif a >0
puts "es positivo"
else 
puts "es cero"
end

if a%2==0
puts "es par"
else
puts "es impar"
end