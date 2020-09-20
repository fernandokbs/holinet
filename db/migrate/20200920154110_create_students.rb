class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :matricula
      t.string :password
      t.integer :role, null: false, default: 1

      t.timestamps
    end
  end
end
