class CreateCarrers < ActiveRecord::Migration[5.2]
  def change
    create_table :carrers do |t|
      t.string :title
      t.string :time_duration

      t.timestamps
    end
  end
end
