class CreateGlobalcontacts < ActiveRecord::Migration
  def change
    create_table :globalcontacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :twitterid
      t.string :linkedin
      t.string :facebook

      t.timestamps
    end
  end
end
