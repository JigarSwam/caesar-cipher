def caesar_cipher(string, shift)
  encoded = ""
  string.each_char do |char|
    case char
    when "a".."z"
      encoded += (((char.ord + shift - 'a'.ord) % 26) + 'a'.ord).chr
    when "A".."Z"
      encoded += (((char.ord + shift - 'A'.ord) % 26) + 'A'.ord).chr
    else
      encoded += char
    end
  end
  encoded
end

puts 'Enter a string'
input = gets.to_s.chomp

puts 'Enter a shift value'
shift = gets.to_i


puts "Encrypted Code:"
puts caesar_cipher(input, shift)


# Wrap around logic explanation:
# 
# char.ord + shift = spaces shifted from the given char
# (char.ord + shift) - 'a'.ord = handles wrap-around
# ((char.ord + shift) - 'a'.ord) % 26 = spaces shifted from 'a'
# Adding back 'a'.ord || 'A'.ord is shifting from the starting point of 'a' or 'A'