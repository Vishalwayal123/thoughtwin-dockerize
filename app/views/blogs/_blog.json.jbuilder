json.extract! blog, :id, :title, :subject, :question, :answer, :blogger, :blogger_image, :blogger_department, :created_at, :updated_at
json.url blog_url(blog, format: :json)
