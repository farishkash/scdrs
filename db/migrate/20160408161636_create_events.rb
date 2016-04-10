class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_description
      t.date :event_date_from
      t.date :event_date_to
      t.date :event_deadline
      t.integer :event_price_before_deadline
      t.integer :event_price_after_deadline

      t.timestamps null: false
    end
  end
end
