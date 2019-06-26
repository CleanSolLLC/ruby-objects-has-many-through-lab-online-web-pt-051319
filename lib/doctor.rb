require 'pry'

class Doctor
  attr_accessor :name, :patient, :date

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    @patient = patient
    @date = date
  end
    

  def self.all
    @@all
  end

end
