class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :matricula
      t.integer :role, null: false, default: 1
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
