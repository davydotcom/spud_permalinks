class ModifySiteIdForSpudPermalinks < ActiveRecord::Migration
  def up
    change_column :spud_permalinks,:site_id,:integer,:default => 0,:null => false
    SpudPermalink.where(:site_id => nil).each {|f| f.site_id = 0 ; f.save}
  end

  def down
    change_column :spud_permalinks,:site_id,:integer,:default => nil,:null => true
    SpudPermalink.where(:site_id => 0).each {|f| f.site_id = nil  ; f.save}
  end
end
