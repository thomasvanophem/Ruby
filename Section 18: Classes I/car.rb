class Car
  attr_accessor :owner
  attr_reader :brand, :model, :year, :license_plate

  def initialize(brand, model, year, license_plate)
    @brand = brand
    @model = model
    @year = year
    @license_plate = license_plate
    @owner = ""
  end

  def to_s
    "Car: #{@brand} #{@model}, built in #{@year} and owned by #{@owner}"
  end
end

my_car = Car.new("Ford", "Focus", 2019, "ZP-842-V")
my_car.owner = "Thomas van Ophem"

puts my_car

my_car.owner = "Tim Obdam"

puts my_car
