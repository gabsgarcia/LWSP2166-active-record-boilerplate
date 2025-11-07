class Consultation < ActiveRecord::Base
  belongs_to :patient # consultation belongs to a patient
  belongs_to :doctor # consultation belongs to a doctor
end
