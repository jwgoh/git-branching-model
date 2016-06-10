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

def sieve_of_eratosthenes(n, nth)
  primes = [true] * (n + 1)
  primes[0] = primes[1] = false

  i = 2

  while i * i <= n
    k = i * i
    while k <= n
      primes[k] = false
      k += i
    end
    i += 1
  end

  sum = 0
  count = 0
  primes.each_with_index do |prime, number|
    if prime
      sum += number
      count += 1
    end

    return sum if count >= nth
  end

  sum
end

# https://primes.utm.edu/lists/small/1000.txt
puts sum_of_prime_numbers(1000)
puts sieve_of_eratosthenes(8000, 1000)

