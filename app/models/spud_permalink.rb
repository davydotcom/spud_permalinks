class SpudPermalink < ActiveRecord::Base
	belongs_to :attachment,:polymorphic => true
	validates :url_name, :presence => true,:uniqueness => true
	validates :attachment_type, :presence => true
	validates :attachment_id, :presence => true
end
