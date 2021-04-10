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

def new_appointment(date, patient)
Appointment.new(date, patient, self)
end

def patients

end

end
