class Prime
  attr_accessor :num
  def initialize(num)
    @num = num
  end

  def is_prime
    i = 3
    return true if(num == 2)
    return false if(num <= 1 || num % 2 == 0)

    while(i*i <= num)
      return false if(num % i == 0)
      i += 1
    end
    return true
  end
end

