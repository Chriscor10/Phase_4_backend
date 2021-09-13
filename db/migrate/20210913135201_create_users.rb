class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :background_image
      t.string :picture_link
      t.string :user
      t.string :password_digest

      t.timestamps
    end
  end
end
