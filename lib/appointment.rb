require 'pry'

class Appointment

  attr_accessor :date, :doctor
  attr_reader :patient

  @@all = []

  def initialize(patient=nil, doctor=nil, date=nil)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    Appointment.all.select do |appointment|
    appointment.patient
    end
  end

  def doctor
    Appointment.all.select do |appointment|
    appointment.doctor
    end
  end

end
