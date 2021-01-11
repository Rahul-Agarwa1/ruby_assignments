class FreqCount
  attr_accessor :val
  def initialize(val)
    @val = val
  end
  def frequency
    len = val.length
    response = {}
    for i in (0..len)
      if response.include?(val[i])
        response[val[i]] += 1
      else
        response[val[i]] = 1
      end
    end
    return response
  end
end

