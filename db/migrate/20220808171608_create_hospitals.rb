class CreateHospitals < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :specialization
      t.string :logo
      t.timestamps
    end
  end
end
