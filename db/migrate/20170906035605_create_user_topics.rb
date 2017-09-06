class CreateUserTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :user_topics do |t|
      t.timestamps

      #define our foreing keys
      t.belongs_to :user, foreign_key: true
      t.belongs_to :topic, foreign_key: true


    end
  end
end
