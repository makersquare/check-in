class RemovePhoneNetworkIdFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :phone_network_id
  end
end