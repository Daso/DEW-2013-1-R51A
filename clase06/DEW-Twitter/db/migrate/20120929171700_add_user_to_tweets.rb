class AddUserToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :user, :string

  end
end
