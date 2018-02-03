json.extract! post, :id, :title, :description, :tag_id, :user_id, :status, :created_at, :updated_at
json.url post_url(post, format: :json)
