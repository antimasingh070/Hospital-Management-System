json.extract! prescription, :id, :prescription, :appointment_id, :doctor_id, :patient_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
