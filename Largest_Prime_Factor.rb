=begin
Check is set this low as per Viking Code School's recommendation (quoted exactly below).
"Don't bother for numbers over 100,000 when using the brute force solution or
you'll need a few days to calculate"
However both check and number can be increased as long as check is 2 less than
number, but the speed takes a hit when check exceeds 9 digits.
=end
check = 99999
primefactor = 0
number = 600851475143

while 2 < check
# look for divisible integers of number that are odd and stop when a primefactor has been found (I filtered out evens because the only even prime number is two)
  if number % check == 0 && check % 2 != 0 && primefactor == 0
    subcheck = 3
    while subcheck < check
      if check % subcheck == 0
# if you find an odd integer that check is divisible by, stop checking the current value of check (this works because I've already ruled out one and checks value)
        break
      elsif subcheck == check - 2
# if you've tried dividing every ood integer up to the last odd integer before check then you've got yourself a prime
        primefactor = check
      end
      subcheck += 2
    end
  end
  check -= 2
end

puts "The highest primefactor of #{number.to_s} is #{primefactor.to_s}"
