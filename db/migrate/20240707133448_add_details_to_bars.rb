class AddDetailsToBars < ActiveRecord::Migration[7.0]
  def change
    add_column :bars, :description, :text
  end
end