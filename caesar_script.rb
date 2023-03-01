require 'pry-byebug'
#a = 97, z = 122
def caesar_ciper (string, key)
  if key > 26
    key %= 26
  elsif key < -26
    key = -(-key%26)
  end
  puts key
  code = string.split('').map do |char| 
    if char.ord.between?(97, 122)
      upper_limit = 122
      lower_limit = 97
    elsif char.ord.between?(65, 90)
      upper_limit = 90
      lower_limit = 65
    elsif char.ord.between?(48, 57)
      upper_limit = 57
      lower_limit = 48
    end

    if char.ord == 32
      char = char
    elsif char.ord + key > upper_limit
      (lower_limit-1 + (key - (upper_limit - char.ord))).chr
    elsif char.ord + key < lower_limit
      (upper_limit+1 + (key - ( lower_limit - char.ord))).chr
    else
      (char.ord+key).chr
    end
  end
  code.join()
end

p caesar_ciper("ebiil jv kxjb fp Jxu", 29)