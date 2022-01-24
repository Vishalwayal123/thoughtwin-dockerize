class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subject
      t.string :question
      t.text :answer
      t.string :blogger
      t.string :blogger_image
      t.string :blogger_department

      t.timestamps
    end
  end
end
