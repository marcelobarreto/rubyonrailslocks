json.extract! article, :id, :title, :text, :version, :created_at, :updated_at
json.url article_url(article, format: :json)
