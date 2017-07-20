require 'byebug'
require_relative 'sanitizer'

class InOut

  def self.write_to_file(input="")
    file = File.open("session_data", 'a+') do |f|
              f.write(" #{input}")
            end

  end

  def self.read
    file = File.read("session_data")
  end

  def self.evaluate(input)
    sanitizer = Sanitizer.new(input)
    return false if sanitizer.clean == false
  end

  def self.clear
    File.truncate("session_data", 0)
  end

end
