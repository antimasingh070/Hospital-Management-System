class AddHospitalIdInDepartments < ActiveRecord::Migration[7.0]
  def change
    add_column :departments, :hospital_id, :integer
  end
end
