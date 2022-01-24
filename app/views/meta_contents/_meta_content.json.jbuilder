json.extract! meta_content, :id, :title, :description, :website, :keyword, :created_at, :updated_at
json.url meta_content_url(meta_content, format: :json)
