class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "230x>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
