class Bicycle
  @@maker = "BikeTech"
  @@count = 0
  
  def self.description
    "Hi there, I'm the blueprint for Bicycles! Use me to create a bicycle."
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

puts Bicycle.description
puts a.maker
puts Bicycle.count