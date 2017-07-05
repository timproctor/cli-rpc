require 'byebug'
class InOut
  def self.write(input)
    file = File.open("session_data", 'w+') do |f|
      f.write(input)
    end
  end

  def self.read
    File.read("session_data")
  end

end
