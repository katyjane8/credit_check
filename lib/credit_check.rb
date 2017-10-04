  card_number_1 = "4929735477250543"
  card_number_2 = "5541808923795240"
  card_number_3 = "4024007136512380"
  card_number_4 = "6011797668867828"
  card_number_5 = "5541801923795240"
  card_number_6 = "4024007106512380"
  card_number_7 = "6011797668868728"
  card_numbers = [card_number_1, card_number_2, card_number_3, card_number_4, card_number_5, card_number_6, card_number_7]

  valid = false
  # from the rightmost digit, which is the check digit, moving left, double the value of every second digit
  def credit_check(card_number)
    results = 0
    card_number.split("").reverse.each_with_index do |numbers, i|
      if i.even?
        results += numbers.to_i
      elsif numbers.to_i * 2 > 9
        double = numbers.to_i * 2
        # if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
        results += double.digits.reduce(:+)
        # take the sum of all the digits
      else
        results += numbers.to_i * 2
      end
    end

    if results % 10 == 0
      puts "The number is valid"
      # if and only if the total modulo 10 is equal to 0 then the number is valid
    else
      puts "The number is invalid"
    end
  end

  card_numbers.map {|card_number| credit_check(card_number)}
