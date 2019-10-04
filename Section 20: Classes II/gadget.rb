require_relative 'app_store'

class Gadget
  attr_accessor :username
  attr_reader :production_number, :apps

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{production_number} has the username #{username}. 
    It is made of the #{self.class} class and it 
    has the ID #{object_id}"    
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  def install_app(name)
    app = AppStore.find_app(name)
    self.apps << app unless self.apps.include?(app)
  end

  def delete_app(name)
    app = self.apps.find { |installed_app| installed_app.name == name }
    self.apps.delete(app) unless app.nil?
  end

  private

  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand (10000..99999)
    alphabet = ("A".."Z").to_a
    middel_digits = "2017"

    5.times { middel_digits << alphabet.sample }

    "#{start_digits}-#{middel_digits}-#{end_digits}"
  end

  def validate_password(password)
    password.is_a?(String) && password.length >= 6 && password =~ /\d/
  end
end

phone = Gadget.new("usename", "password")
p phone.apps
phone.install_app(:Chat)
phone.install_app(:Twitter)
phone.install_app(:Chat)
p phone.apps
phone.delete_app(:Chat)
phone.delete_app(:Chat)
p phone.apps