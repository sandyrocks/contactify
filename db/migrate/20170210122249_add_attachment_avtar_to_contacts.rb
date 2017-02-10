class AddAttachmentAvtarToContacts < ActiveRecord::Migration
  def self.up
    change_table :contacts do |t|
      t.attachment :avtar
    end
  end

  def self.down
    remove_attachment :contacts, :avtar
  end
end
