class AddDescriptionToCarrer < ActiveRecord::Migration[5.2]
  def change
    add_column :carrers, :description, :text
  end
end
