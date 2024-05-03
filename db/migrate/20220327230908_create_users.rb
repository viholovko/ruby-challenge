class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "first_name"
      t.string "middle_name"
      t.string "last_name"
      t.string "email"
      t.string "address"
      t.string "city"
      t.string "state"
      t.string "zip_code"
      t.string "country"
      t.string "other_country"
      t.integer "phone_number"
      t.string 'social_security_number'

      t.timestamps
    end
  end
end
