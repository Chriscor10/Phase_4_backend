class CreatePostTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :post_topics do |t|
      t.references :post, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
