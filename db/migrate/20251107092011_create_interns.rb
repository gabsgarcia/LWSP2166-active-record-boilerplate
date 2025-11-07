# TIMESTAMP=`rake db:timestamp`
# touch db/migrate/${TIMESTAMP}_create_interns.rb

class CreateInterns < ActiveRecord::Migration[7.0]
  def change
    create_table :interns do |t|
      t.string      :first_name
      t.string      :last_name
      t.references  :doctor, foreign_key: true
      t.timestamps
    end
  end
end

# references para onde ela vai?
# ela vai para a tabela doctor
