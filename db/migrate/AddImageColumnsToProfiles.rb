class AddImageColumnsToProfiles < ActiveRecord::Migration
  def self.up
    add_attachment :profiles, :image
  end

  def self.down
    remove_attachment :proflies, :image
  end
end