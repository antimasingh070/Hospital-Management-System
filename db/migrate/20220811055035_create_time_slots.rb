class CreateTimeSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :time_slots do |t|
      t.string :start_at
      t.string :end_at
      t.timestamps
    end
  end
end
