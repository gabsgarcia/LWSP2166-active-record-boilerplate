class Intern < ActiveRecord::Base
  belongs_to :doctor # a intern belongs to a doctor (um residente pertence a um doutor)
end