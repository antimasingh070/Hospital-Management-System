json.extract! appointment, :id, :doctor_id, :patient_id, :appointment_date, :status, :slot_id, :description, :hospital_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
