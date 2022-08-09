class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :active

      t.timestamps
    end
  end
end
