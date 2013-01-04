

class MyGem

  def self.owner
    puts "Test Owner"
  end

  def self.filter(arr)
      result = Array.new

      arr.each do |a|
       result.push(a) if yield(a)
      end

      result
  end


end
