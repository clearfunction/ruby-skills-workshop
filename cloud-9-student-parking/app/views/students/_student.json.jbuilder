json.extract! student, :id, :name, :age, :gpa, :street, :city, :state, :zip, :email, :created_at, :updated_at
json.url student_url(student, format: :json)