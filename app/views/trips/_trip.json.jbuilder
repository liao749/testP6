json.extract! trip, :id, :tripName, :startDate, :endDate, :user_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
