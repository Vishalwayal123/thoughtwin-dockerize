class AddPageTometaContent < ActiveRecord::Migration[5.2]
  def change
  	add_column :meta_contents, :page, :string
  end
end
