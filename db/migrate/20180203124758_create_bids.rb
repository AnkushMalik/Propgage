class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.text :description
      t.text :detail, null: false
      t.decimal :interest, default: 0
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
