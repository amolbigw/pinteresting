class AddNetworkScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :network_score, :integer, :default => 0
  end
end
