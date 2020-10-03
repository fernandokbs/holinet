class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :matricula
      t.integer :role, null: false, default: 2
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
