class AddDetailsToFoos < ActiveRecord::Migration[7.0]
  def change
    add_column :foos, :description, :text
  end
end
