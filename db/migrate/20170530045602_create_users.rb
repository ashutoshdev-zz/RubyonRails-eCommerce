class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname;
      t.string :lastname
      t.string :location
      t.string :number
      t.string :email
      t.timestamps
    end
  end
end
