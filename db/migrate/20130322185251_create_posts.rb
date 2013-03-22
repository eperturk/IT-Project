class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.date :created
      t.text :comments

      t.timestamps
    end
  end
end
