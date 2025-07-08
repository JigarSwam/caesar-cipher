# two arrays of all caps and all lowercase letters
# if letter from inputted argument matches one of those arrays, shift based on the cipher to new index

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