class AddAttachmentDpToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :dp
    end
  end

  def self.down
    remove_attachment :users, :dp
  end
end
