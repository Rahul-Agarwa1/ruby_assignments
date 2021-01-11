class ArmstrongNumber
  attr_accessor :num
  def initialize(num)
    @num = num
  end
  def is_armstrong
    len = num.to_s.length
    i = 2 
    ans = 0
    temp_num = num
    # special case
    return false if num == 0

    while(temp_num>0)
      ans += (temp_num % 10) ** len
      temp_num = temp_num / 10
    end
    return true if ans == num
    return false
  end
end

[0,10,12,14,15].each do |num|
  puts ArmstrongNumber.new(num).is_armstrong
end