class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :message

      t.timestamps
    end
  end
end
