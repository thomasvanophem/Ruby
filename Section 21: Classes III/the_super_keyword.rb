class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Vroom! Vroom!"
  end
end

class Firetruck < Car
  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " Beep! Beep! I' driving at #{speed} miles per hour."
  end
end

ft = Firetruck.new("Ford", 10)
p ft.drive(100)