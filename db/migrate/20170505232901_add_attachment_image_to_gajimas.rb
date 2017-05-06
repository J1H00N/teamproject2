class AddAttachmentImageToGajimas < ActiveRecord::Migration
  def self.up
    change_table :gajimas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :gajimas, :image
  end
end
