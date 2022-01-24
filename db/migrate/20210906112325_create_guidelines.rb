class CreateGuidelines < ActiveRecord::Migration[5.2]
  def change
    create_table :guidelines do |t|
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
