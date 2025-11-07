# TIMESTAMP=`rake db:timestamp`
# touch db/migrate/${TIMESTAMP}_create_doctors.rb

class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string      :first_name
      t.string      :last_name
      t.timestamps
    end
  end
end