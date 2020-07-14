class AddUsername < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, default: "user_##{:id}"
  end
end
