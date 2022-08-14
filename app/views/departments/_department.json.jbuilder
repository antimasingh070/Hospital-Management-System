json.extract! department, :id, :name, :description, :logo, :active, :created_at, :updated_at
json.url department_url(department, format: :json)
