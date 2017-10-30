class ColumnChangeLocationUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :loaction, :location
    end
  end
end
