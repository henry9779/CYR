class Commas

  def set(number)
    whole, decimal = number.to_s.split(".")
    whole_with_commas = whole.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
    [whole_with_commas, decimal].compact.join(".")
  end

end

# @commas = Commas.new
# p @commas.set(9527)# => "9,527"
# p @commas.set(3345678)# => "3,345,678"
# p @commas.set(-1234.45)# => "-1,234.45"
