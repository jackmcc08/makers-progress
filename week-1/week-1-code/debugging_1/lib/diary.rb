# Understands the storage of appointments
class Diary
  attr_reader :appointments

  def initialize
    @appointments = []
  end

  def add_appointment(appointment)
    raise "You're not free at that time" if not_free?(appointment)
    @appointments.push(appointment)
  end

  private

  def not_free?(appointment)
    appointments.map(&:time).include? appointment.time
  end
end

# There is an error no method error for includes?
# it is raised by line 10 calling the not_free method, which then fails on line 17. The spec calling it fails on line 9.

# First test - includes is not a method, so write include? instead

# PASSED 
