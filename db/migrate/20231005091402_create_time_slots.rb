class CreateTimeSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :time_slots do |t|
      t.time :time
      t.references :appointment, null: false, foreign_key: true

    end
  end
end
