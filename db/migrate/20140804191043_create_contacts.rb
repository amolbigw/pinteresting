class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :globalID
      t.integer :points

      t.timestamps
    end
  end
end
