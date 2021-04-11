class Patient

attr_accessor :name, :doctors, :appointment

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end









end
