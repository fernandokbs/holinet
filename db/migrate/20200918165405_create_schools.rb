class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :role, null: false, default: 3
      t.timestamps
    end
  end
end
