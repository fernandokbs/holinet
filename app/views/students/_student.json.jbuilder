json.extract! student, :id, :name, :email, :matricula, :role, :created_at, :updated_at
json.url student_url(student, format: :json)
