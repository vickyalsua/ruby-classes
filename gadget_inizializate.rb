class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username,password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and has the ID #{self.object_id}."
  end
end

phone = Gadget.new("vicky","vickyalsua")

puts phone.username

puts phone.production_number
phone.username="secretagentman"
puts phone.username

phone.password="blablabla"
