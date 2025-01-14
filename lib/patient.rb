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

def new_appointment(date, doctor)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select {|a| a.patient == self}
end

def doctors
  appointments.map {|a| a.doctor}
end



end
