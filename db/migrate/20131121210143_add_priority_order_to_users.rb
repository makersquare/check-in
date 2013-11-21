class AddPriorityOrderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :priority_order, :integer
    add_column :users, :role, :string
  end
end
