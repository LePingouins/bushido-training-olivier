json.extract! article, :id, :title, :body, :premium_content, :created_at, :updated_at
json.url article_url(article, format: :json)
