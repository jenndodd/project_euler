def palindrome_product_3_digits
  number1 = (500..999).to_a
  product_result = []
  
  number1.repeated_combination(2) do |num1, num2|
    product = num1 * num2
    if product.to_s == product.to_s.reverse
      product_result << product
    end
  end
  return product_result.max
end

puts product_3_digits
