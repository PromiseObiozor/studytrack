json.extract! assignment, :id, :title, :due_date, :status, :course, :notes, :created_at, :updated_at
json.url assignment_url(assignment, format: :json)
