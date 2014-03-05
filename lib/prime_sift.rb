# def prime_sift(number)
#   prime = 2
#   numbers = Array(prime..number)
#   while prime < number
#     numbers.each do |num|
#       numbers.delete(num) unless num == prime if num % prime == 0
#     end
#   end  
#    numbers - [1]
# end


def prime_sift(number)

numbers = Array(2...number)
  numbers.each do |prime| 
    numbers.reject!{ |num| num % prime == 0 && !(prime == num) }  
  end
end

def nth_prime(number)
  primes = [2,3]
  upper_number = 4
  numbers = (2..upper_number).to_a
  number_to_check = 0

  while primes.length < number do
    numbers.each do |num|
      if upper_number % num == 0 && upper_number != num
        number_to_check = num
        break
      else 
        number_to_check = upper_number
      end
    end
    if number_to_check == numbers[-1] 
      primes.push(upper_number) 
    end
    upper_number += 1    
    numbers = (2..upper_number).to_a
  end

  primes[-1]
end
