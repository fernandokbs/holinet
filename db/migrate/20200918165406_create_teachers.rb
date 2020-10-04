class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :matricula
      t.integer :role, null: false, default: 2
      t.timestamps
    end
  end
end
