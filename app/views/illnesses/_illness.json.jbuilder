json.extract! illness, :id, :name, :symptoms, :content, :created_at, :updated_at
json.url illness_url(illness, format: :json)
