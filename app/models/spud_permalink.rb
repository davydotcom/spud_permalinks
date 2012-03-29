class SpudPermalink < ActiveRecord::Base
	belongs_to :attachment,:polymorphic => true
	validates :url_name, :presence => true
	validates_uniqueness_of :url_name, :scope => :site_id
	validates :attachment_type, :presence => true
	validates :attachment_id, :presence => true

	scope :site, lambda {|sid| where(:site_id => sid)}
end
