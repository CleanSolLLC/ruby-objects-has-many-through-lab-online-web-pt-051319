require 'pry'

class Doctor

  attr_accessor :name, appointment
  attr_reader :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date)
    binding.pry
    appointment.doctor = self
  end
  appointment.patients

  def patients
    Appointment.all.map do |appointment|
    end
  end

end
