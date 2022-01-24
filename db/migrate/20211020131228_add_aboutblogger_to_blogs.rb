class AddAboutbloggerToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :about_blogger, :string
    add_column :blogs, :description, :string
    add_column :blogs, :name, :string
    add_column :blogs, :user_id, :integer
  end
end
