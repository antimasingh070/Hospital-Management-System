class CreatePrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.text :prescription
      t.integer :appointment_id
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
