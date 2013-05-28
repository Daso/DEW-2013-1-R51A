class AddStatusToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :status, :string

  end
end
