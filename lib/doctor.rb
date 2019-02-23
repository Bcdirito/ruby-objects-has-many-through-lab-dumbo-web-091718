class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    new_app = Appointment.new(self, patient, date)
    @appointments << new_app
    new_app
  end
end
