json.extract! user, :id, :username, :employer_id, :password, :created_at, :updated_at
json.url employer_url(employer, format: :json)