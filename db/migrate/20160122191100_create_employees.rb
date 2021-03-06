class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :salary
      t.references :department, index: true

      t.timestamps
    end
  end
end
