# Ultimate Prime Number Resource
# https://primes.utm.edu/

def check_primality(x)
  return false if x < 2

  i = 2

  while i * i <= x
    return false if x % i == 0
    i += 1
  end

  true
end

def sum_of_prime_numbers(n)
  sum = 0
  prime_numbers_count = 0
  candidate = 2

  while prime_numbers_count < n
    if check_primality(candidate)
      sum += candidate
      prime_numbers_count += 1
    end

    candidate += 1
  end

  sum
end

# https://primes.utm.edu/lists/small/1000.txt
puts sum_of_prime_numbers(1000)

