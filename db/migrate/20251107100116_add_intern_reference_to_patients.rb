# TIMESTAMP=`rake db:timestamp`
# touch db/migrate/${TIMESTAMP}_add_age_to_patients.rb

class AddInternReferenceToPatients < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :intern, foreign_key: true
  end
end

# a referencia vai ser em que tabela? patients
# ela se referencia a quem? intern
# e continuamos com a integridade do foreign_key: true