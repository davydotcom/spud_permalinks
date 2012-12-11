class AddSiteIdToSpudPermalinks < ActiveRecord::Migration
  def change
    add_column :spud_permalinks, :site_id, :integer
    add_index :spud_permalinks,:site_id, :name => "idx_permalinks_site_id"
  end
end
