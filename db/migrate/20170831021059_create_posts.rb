class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
