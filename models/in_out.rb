require 'byebug'
require_relative 'sanitizer'

class InOut
  def self.write(input)
    file = File.open("session_data", 'w+') do |f|
      f.write(input)
    end
  end

  def self.read
    read = File.read("session_data")
  end

  def self.evaluate(input)
    sanitizer = Sanitizer.new(input)
    sanitizer.clean
  end

end
