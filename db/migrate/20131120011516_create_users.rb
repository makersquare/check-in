class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.references :phone_network
      t.integer :ping_count

      t.timestamps
    end
  end
end
