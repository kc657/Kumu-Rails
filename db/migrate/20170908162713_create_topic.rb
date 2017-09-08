class CreateTopic < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
    end
  end
end
