def caesar_cipher(input_string, shift_factor)
  # turn string into array
  input_as_array = input_string.chars
  # for char in string array
  for i in 0..input_as_array.length - 1
    # get char number
    char_number = input_as_array[i].ord
    # if char is lowercase
    if char_number >= 97 && char_number <= 122
      # slide factor is 96
      slide_factor = 96
      # elsif char is uppercase
    elsif char_number >= 65 && char_number <= 90
      # slide factor is 64
      slide_factor = 64
    # otherwise do nothing
    else
      break
    end
      # subtract slide factor
      char_number -= slide_factor
      # add shift factor that was given
      char_number += shift_factor
      # mod 26
      char_number = char_number % 26
      # add slide factor
      char_number += slide_factor
      # store char in array slot
      input_as_array[i] = char_number.chr
  end
  # turn array into string
  output_string = input_as_array.join
  # print string
  puts output_string
end

caesar_cipher("Helloz!", 5)