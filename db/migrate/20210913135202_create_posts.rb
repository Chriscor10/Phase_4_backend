class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :heading
      t.string :content
      t.string :picture_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
