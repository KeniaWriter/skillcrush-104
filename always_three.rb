def always_three(num)

    (((num + 5)*2 - 4)/2 - num)
    
end

print "Give me a number: "

number = gets.to_i

puts "The answer is always " + always_three(number).to_s