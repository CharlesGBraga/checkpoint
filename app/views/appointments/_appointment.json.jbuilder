json.extract! appointment, :id, :appointments, :type_id, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
