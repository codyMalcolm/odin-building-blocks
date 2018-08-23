sample_arr = [1, 2, 3, 4, 5]
sample_hash = {one: 1, two: 2, three: 3, four: 4, five: 5}

module Enumerable
  def my_each
    if self.class == Array
      0.upto(self.length-1) do |i|
        yield(self[i])
      end
    elsif self.class == Hash
      for key in self
        yield(key[0].to_s, key[1])
      end
    end
  end

  def my_each_with_index
    if self.class == Array
      0.upto(self.length-1) do |i|
        yield(self[i], i)
      end
    elsif self.class == Hash
      i = 0
      for key in self
        yield([key[0].to_s, key[1]], i)
        i+=1
      end
    end
  end

  def my_select
    if self.class == Array
      arr = []
      0.upto(self.length-1) do |i|
        arr << self[i] if yield(self[i])
      end
      return arr
    elsif self.class == Hash
      hash = Hash.new
      for key in self
        hash[key[0]] = key[1] if yield(key[0], key[1])
      end
      return hash
    end
  end

  def my_all?
    if self.class == Array
      0.upto(self.length-1) do |i|
        return false unless yield(self[i])
      end
      return true
    elsif self.class == Hash
      for key in self
        return false unless yield(key[0], key[1])
      end
      return true
    end
  end

  def my_none?
    if self.class == Array
      0.upto(self.length-1) do |i|
        return false if yield(self[i])
      end
      return true
    elsif self.class == Hash
      for key in self
        return false if yield(key[0], key[1])
      end
      return true
    end
  end

end

puts "Testing my_each"
sample_arr.each{|v| print "#{v*2}, "}
puts ""
sample_arr.my_each{|v| print "#{v*2}, "}
puts ""
sample_hash.each{|k, v| print "#{k}: #{v}, "}
puts ""
sample_hash.my_each{|k, v| print "#{k}: #{v}, "}
puts ""

puts "Testing my_each_with_index"
sample_arr.each_with_index{|v, i| print "#{v*i}, "}
puts ""
sample_arr.my_each_with_index{|v, i| print "#{v*i}, "}
puts ""
sample_hash.each_with_index{|(k, v), i| puts "#{k}, #{v}, and index is #{i}, "}
sample_hash.my_each_with_index{|(k, v), i| puts "#{k}, #{v}, and index is #{i}, "}

puts "Testing my_select"
p sample_arr.select{|v| v >= 3}
p sample_arr.my_select{|v| v >= 3}
p sample_hash.select{|k, v| v >= 3}
p sample_hash.my_select{|k, v| v >= 3}
p sample_hash.select{|k, v| k.length > 3}
p sample_hash.my_select{|k, v| k.length > 3}
p sample_hash.select{|k, v| k.length > v}
p sample_hash.my_select{|k, v| k.length > v}

puts "Testing my_all?"
p sample_arr.all?{|v| v <= 5}
p sample_arr.my_all?{|v| v <= 5}
p sample_arr.all?{|v| v < 5}
p sample_arr.my_all?{|v| v < 5}
p sample_hash.all?{|k, v| v >= 3}
p sample_hash.my_all?{|k, v| v >= 3}
p sample_hash.all?{|k, v| v <= 5}
p sample_hash.my_all?{|k, v| v <= 5}
p sample_hash.all?{|k, v| k.length >= 3}
p sample_hash.my_all?{|k, v| k.length >= 3}
p sample_hash.all?{|k, v| k.length > 3}
p sample_hash.my_all?{|k, v| k.length > 3}
p sample_hash.all?{|k, v| k.length > v}
p sample_hash.my_all?{|k, v| k.length > v}

puts "Testing my_none?"
p sample_arr.none?{|v| v >= 5}
p sample_arr.my_none?{|v| v >= 5}
p sample_arr.none?{|v| v > 5}
p sample_arr.my_none?{|v| v > 5}
p sample_hash.none?{|k, v| v > 5}
p sample_hash.my_none?{|k, v| v > 5}
p sample_hash.none?{|k, v| v >= 5}
p sample_hash.my_none?{|k, v| v >= 5}
p sample_hash.none?{|k, v| k.length >= 5}
p sample_hash.my_none?{|k, v| k.length >= 5}
p sample_hash.none?{|k, v| k.length > 5}
p sample_hash.my_none?{|k, v| k.length > 5}
p sample_hash.none?{|k, v| k.length > v}
p sample_hash.my_none?{|k, v| k.length > v}
