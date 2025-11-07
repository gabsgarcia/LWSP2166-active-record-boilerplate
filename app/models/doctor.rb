class Doctor < ActiveRecord::Base
  # association
  has_many :interns # a doctor has_many interns (um doctor tem muitos residentes)
  has_many :consultations # a doctor has_many consultations (um doctor tem muitas consultas)
  has_many :patients, through: :consultations # a doctor has_many patients through consultations (um doctor tem muitos pacientes passando por consultas)

  # validation
  validates :last_name, presence: true # validar que o last_name existe, está presente na criação do Doctor.new()
  validates :first_name, presence: true # validar que o first_name existe, está presente na criação do Doctor.new()
  validates :first_name, uniqueness: { scope: :last_name } # validar se a junção do last_name com first_name é unica
  validates :last_name, length: { minimum: 3 } # validar se last_name tem no minimo 3 caracteres
end