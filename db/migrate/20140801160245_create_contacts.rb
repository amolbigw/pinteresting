class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :globalID
      t.array :tags
      t.integer :points, :default => 0

      t.timestamps
    end
  end
end
