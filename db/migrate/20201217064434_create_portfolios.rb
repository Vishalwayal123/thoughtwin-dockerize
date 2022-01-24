class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :side_image
      t.string :language
      t.string :web_link
      t.string :web_type
      t.integer :admin_id
      t.integer :user_id

      t.timestamps
    end
  end
end
