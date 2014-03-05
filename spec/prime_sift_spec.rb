require 'rspec'
require 'prime_sift'

describe ('prime_sift') do
  it('creates an array with all prime numbers less than a given number') do
    prime_sift(5).should(eq([2,3]))
  end 
end
describe('nth_prime') do
  it('returns the prime number at a given nth index') do
    nth_prime(5).should(eq(11))
  end
end



