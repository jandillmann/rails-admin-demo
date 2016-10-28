class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.belongs_to :user, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
