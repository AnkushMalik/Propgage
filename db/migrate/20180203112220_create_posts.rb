class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :tag, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
