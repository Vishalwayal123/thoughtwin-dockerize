class CreateMetaContents < ActiveRecord::Migration[5.2]
  def change
    create_table :meta_contents do |t|
      t.string :title
      t.string :description
      t.string :website
      t.string :keyword

      t.timestamps
    end
  end
end
