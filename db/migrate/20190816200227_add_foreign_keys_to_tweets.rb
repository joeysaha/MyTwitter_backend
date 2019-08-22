class AddForeignKeysToTweets < ActiveRecord::Migration[5.2]
  def up
    add_foreign_key :tweets, :users
  end

  def down
    remove_foreign_key :tweets, :users
  end
end
