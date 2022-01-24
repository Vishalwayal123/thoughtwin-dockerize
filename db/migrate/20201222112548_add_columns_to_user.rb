class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_portfolio, :boolean, default: false
    add_column :users, :is_carrer, :boolean, default: false
    add_column :users, :is_metatags, :boolean, default: false
  end
end
