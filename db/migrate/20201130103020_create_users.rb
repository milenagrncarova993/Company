class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :customer_number
      t.string :street_name
      t.string :street_number
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
