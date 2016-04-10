class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.string :guest_address_1
      t.string :guest_address_2
      t.string :guest_city
      t.string :guest_state
      t.string :guest_zip
      t.string :guest_email
      t.string :guest_phone_number

      t.timestamps null: false
    end
  end
end
