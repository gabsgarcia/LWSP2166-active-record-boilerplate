class Patient < ActiveRecord::Base
  has_many :consultations # a patient has many consultations (um paciente tem muitas consultas)
end