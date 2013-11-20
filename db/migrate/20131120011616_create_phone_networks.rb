class CreatePhoneNetworks < ActiveRecord::Migration
  def change
    create_table :phone_networks do |t|
      t.string :name
      t.string :sms_email_suffix

      t.timestamps
    end
  end
end
