class CreditCard
  attr_reader :card_number,
              :limit
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?

    reverse_card_number = @card_number.reverse!

    num_array = @card_number.chars.map do |char|
      char.to_i
    end

    odd_index_numbers_doubled = @card_number.chars

    odd_index_numbers_doubled = num_array.map.with_index do |num, index|
      if  index == 0 || index % 2 == 0
        num
      else
        new_num = num * 2
        new_num.to_s.chars.map(&:to_i).sum
      end
    end.sum

    if odd_index_numbers_doubled.to_i % 10 == 0
      true
    else
      false
    end
  end

  def last_four
    @card_number[-4..-1]
  end
end
