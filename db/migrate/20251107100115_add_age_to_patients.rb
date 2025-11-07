# TIMESTAMP=`rake db:timestamp`
# touch db/migrate/${TIMESTAMP}_add_age_to_patients.rb

class AddAgeToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :age, :integer
  end
end