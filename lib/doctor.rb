class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def appointments
appointment.all.select {|a| appointment.doctor == self }
end

end
