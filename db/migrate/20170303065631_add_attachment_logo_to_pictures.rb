class AddAttachmentLogoToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :pictures, :logo
  end
end
