class CreateTweets < ActiveRecord::Migration[5.2]
  def up
    create_table :tweets do |t|
      t.timestamps
    end
  end

  def down
    drop_table :tweets 
  end
end
