json.extract! department, :id, :name, :description, :logo, :active, :created_at, :updated_at, :hospital_id
json.url department_url(department, format: :json)
