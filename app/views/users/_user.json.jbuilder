json.extract! user, :id, :username, :description, :avatar_url, :created_at, :updated_at
json.url user_url(user, format: :json)
