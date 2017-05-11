json.extract! photo, :id, :caption, :place_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
