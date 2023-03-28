class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :phone

      t.timestamps
    end
  end
end