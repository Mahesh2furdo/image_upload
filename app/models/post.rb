class Post < ActiveRecord::Base
	# associates attribute :image with a file attachment
	has_attached_file :image, styles: { 
		small: "64x64", 
		med: "200x200", 
		large: "400x400" 
	}
	# url: ENV["MASTER_AWS_CLOUD_FRONT"] ? ":s3_cloud_front_url" : '/spree/products/:asset_viewable_id/:style/:basename.:extension',
    # path: ENV["MASTER_AWS_CLOUD_FRONT"] ? 'public/spree/products/:asset_viewable_id/:style/:basename.:extension' : ':rails_root/public/spree/products/:asset_viewable_id/:style/:basename.:extension',
    # :url =>':s3_domain_url',
  	# :path => '/:class/:attachment/:id_partition/:style/:filename',

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end