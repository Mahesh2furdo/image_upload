class Picture < ActiveRecord::Base

	# mount_uploader :image, ImageUploader


	has_attached_file :image,
    :styles => {
      :large =>"500x500>",
      :medium => "300x300>",
      :thumb => "100x100>" }
    # :url => "/:class/:attachment/:id/:style_:basename.:extension"
  
  validates_attachment :image, 
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
      # :size => { :in => 0..20.kilobytes } 

	validates_presence_of :name

end
