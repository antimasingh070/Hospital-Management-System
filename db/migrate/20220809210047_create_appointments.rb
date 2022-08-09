class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :appointment_date
      t.string :status
      t.integer :slot_id
      t.text :description
      t.integer :hospital_id

      t.timestamps
    end
  end
end
