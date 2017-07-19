require 'byebug'
require_relative 'sanitizer'

class InOut

  STORAGE = []
  def self.write(input="")
    file = File.open("session_data", 'a+') do |f|
              STORAGE << f.write(input)
            end
    byebug
    STORAGE 

  end

  def self.read
    file = File.read("session_data")
  end

  def self.evaluate(input)
    sanitizer = Sanitizer.new(input)
    return false if sanitizer.clean == false
  end

  def self.clear
    byebug
  end

end
