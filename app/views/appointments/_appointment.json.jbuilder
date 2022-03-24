# frozen_string_literal: true

json.extract! appointment, :id, :patient_id, :doctor_id, :reason, :time, :status, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
