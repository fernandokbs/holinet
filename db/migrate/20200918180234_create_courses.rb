class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :teacher, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
