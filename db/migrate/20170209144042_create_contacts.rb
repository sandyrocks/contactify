class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :primary_email_id
      t.string :secondary_email_id
      t.string :mobile_number
      t.string :city
      t.string :state
      t.string :country
      t.string :twitter_id

      t.timestamps
    end
  end
end
