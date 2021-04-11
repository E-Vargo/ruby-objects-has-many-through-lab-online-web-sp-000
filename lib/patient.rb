class Patient 
  
attr_accessor :name, :doctors, :appointments

@@all = [] 

def initialize(name)
  @name = name
  @@all << self
end








end