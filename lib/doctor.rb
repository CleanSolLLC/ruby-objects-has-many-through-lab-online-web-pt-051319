require 'pry'

class Doctor
  attr_accessor :name, :patient, :date

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appoinment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end


  def self.all
    @@all
  end

end
