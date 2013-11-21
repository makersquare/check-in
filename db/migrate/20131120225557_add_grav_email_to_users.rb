class AddGravEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grav_email, :string
  end
end
