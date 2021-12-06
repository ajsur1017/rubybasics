p "------HELLO WORLD------"
p "----Question #1----"
p "Hello World"
p "----Question #2----"
adjective = "Big Bad"
p "Hello #{adjective} World"
p "----Question #3----"
helloWorld = "Hello World"
p helloWorld.upcase
p "------NUMS ARRAY AND ENUMERABLES------"
p "----Question #1----"
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
p nums.uniq
p "----Question #2----"
nums.push(5)
nums.pop(5)
nums.shift(5)
nums.unshift(5)
p nums.length
p nums
p "----Question #3----"
p nums.include?(8)
p "----Question #4----"
p nums.find_all {|obj| obj >= 10}
p "----Question #5----"
p nums.all? {|obj| obj >= 0}
p "----Question #6----"
p nums.any? {|obj| obj % 8 == 0}
p "----Question #7----"
p nums.count {|x| x > 4}
p "----Question #8----"

p "----Question #9----"
p nums.find {|el| el % 7 == 0 && el % 5 == 0 && el > 0}
p "----Question #10----"
p nums.find_index {|el| el % 7 == 0 && el % 5 == 0 && el > 0}
p "----Question #11----"
p nums.first(3)
p "----Question #12----"
p nums.last(5)
p "----Question #13----"
p nums.group_by {|x| x % 3 == 0}
p "----Question #14----"
p nums.minmax
p "----Question #15----"
p nums.reject {|x| x % 3 == 0}
p "----Question #16----"
p nums.select {|x| x % 5 == 0}
p "------COLOR ARRAY------"
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
p "----Question #1----"
p colors.sample
p "----Question #2----"
p colors.reverse
p "----Question #3----"
p colors.map(&:upcase) 
p "------METHODS------"
p "----Question #1----"
class Rectangle
    def initialize(length, height)
        @length = length
        @height = height
    end
    def setLength=(length)
        @length = length
    end

    def setHeight=(height)
        @height = height
    end
    def getLength
        return @length
    end
    def getHeight
        return @height
    end
    def calculateArea
        return @length * @height
    end
end
rect = Rectangle.new(10, 20)
rect.setLength = 50
rect.setHeight = 30

x = rect.getLength
y = rect.getHeight

puts "The lenght of the rectangle is : #{x}"
puts "The height of the rectangle is : #{y}"
puts "The area is: #{rect.calculateArea}"
# found on https://gist.github.com/wohhie/e06fb9816ccc6dd8ce9ebb97607c080c
p "----Question #2----"
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    return arr.map {|x| x * 5}
end
p multiply_each_by_five(nums)
p "-----METHODS WITH A HASH------"
book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}
p "----Question #1----"
def print_price (item)
    return "The price is $#{item}"
end
p print_price(table[:price])
p "----Question #2----"
def print_item_sumns (item1, item2)
    return "The total is $#{item1 + item2}"
end
p print_item_sumns(lamp[:price], book[:price]) 
p "------SOLVING PROBLEMS WITH RUBY------"
p "----Question #1----"
numbers = (0..1000).to_a

p "------PRIMES------"
p "----Question #1----"
require 'prime'
p Prime.prime?(2)
p Prime.prime?(4)

def check_prime?(num)
    return false if num <= 1
    Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
    true
end
p check_prime?(17)
p check_prime?(24)
p "----Question #2----"
Prime.each(100) do |prime|
    p prime    
end
