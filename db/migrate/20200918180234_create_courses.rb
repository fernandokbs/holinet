class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.name :string
      t.references :user, null: false, foreign_key: true
      t.description :text

      t.timestamps
    end
  end
end
