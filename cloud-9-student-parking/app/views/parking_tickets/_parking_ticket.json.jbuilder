json.extract! parking_ticket, :id, :fee, :reporter, :description, :student_id, :created_at, :updated_at
json.url parking_ticket_url(parking_ticket, format: :json)