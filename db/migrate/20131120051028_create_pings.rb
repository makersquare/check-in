class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.string :message
      t.references :user, index: true

      t.timestamps
    end
  end
end
