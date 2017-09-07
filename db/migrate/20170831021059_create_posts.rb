class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

      #foreign association keys
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true

      #Schema attributes
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
