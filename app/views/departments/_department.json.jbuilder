json.extract! department, :id, :name, :description, :logo, :status, :created_at, :updated_at
json.url department_url(department, format: :json)
