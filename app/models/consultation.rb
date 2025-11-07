class Consultation < ActiveRecord::Base
  belongs_to :patient # consultation belongs to a patient (consulta pertence a um paciente)
  belongs_to :doctor # consultation belongs to a doctor (consulta pertence a um doctor)
end
