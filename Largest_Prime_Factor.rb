=begin
Check is set this low as per Viking Code School's recommendation (quoted exactly below).
"Don't bother for numbers over 100,000 when using the brute force solution or
you'll need a few days to calculate"
=end
check = 99999
number = 600851475143
primefactor = 0

while 2 < check
# check for divisible integers of number that are odd and stop when a primefactor has been found (I filtered out evens because the only even prime number is two)
  if number % check == 0 && check % 2 != 0 && primefactor == 0
    subcheck = check
    while subcheck > 1
      subcheck -= 1
      if check % subcheck == 0
# if you find an integer that check is divisible by, stop checking the current value of check (this works because I've already ruled out one and checks value)
        break
      elsif subcheck == 2
# if you've tried dividing every number lower then check and reached two then you've got yourself a prime
        primefactor = check
      end
    end
  end
# I'm subtracting by two instead of the usual one here to keep check's value odd
  check -= 2
end

puts "The highest primefactor of #{number.to_s} is #{primefactor.to_s}"
