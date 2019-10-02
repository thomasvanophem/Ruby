module LengthConversions
  WEBSITE = "https://www.angelo.edu/dept/agriculture/faculty/scott_conversions.php"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions::WEBSITE

puts LengthConversions.miles_to_feet(1)
puts LengthConversions.miles_to_centimeters(1)