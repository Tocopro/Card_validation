puts 'Credit Card Number Validation'
puts 'Enter the Credit or Debit card Number: '
# Users enters the Card number
number = gets.chomp
# initialize the array to store the card after iteration
valid_number = []
# reverse the number to enable the program to start from the original number right to left
number = number.reverse
puts 'Card Number reversed',number
sum = 0
# split the number to iterate through the number
number_split = number.split('')
num1 = 0
# iterate through all the numbers in string format
number_split.each_with_index do |val, index|
  # push the index one place up by adding 1 to each index for the modulos test
  # test if the index is odd
  if (index + 1).odd?
    valid_number << val.to_i
    # test the index if it is even
  elsif ((index + 1) % 2).zero?
    num1 = val.to_i * 2
    # evaluate if the product is larger than 9
    if num1 > 9
      sum = 0
      # convert the number to a string split it then change it to an integer and add it up
      num1 = num1.to_s
      char = num1.split('')
      char.each do |x|
        sum += x.to_i
      end
      valid_number << sum.to_i
      # if the number is less than 9 add it to the array
    elsif num1 <= 9
      valid_number << num1.to_i
    end
  end
end
# testing if the sum of all the numbers in the final array are divisible by 10 without a remainder
total = 0
valid_number.each do |x|
  total += x
end
puts total
puts valid_number.reverse.inspect
# display the result confirming if the card number is valid or not
if (total % 10).zero?
  puts 'The Card Number is Valid'
else
  puts 'The Card Number is not Valid'
end

