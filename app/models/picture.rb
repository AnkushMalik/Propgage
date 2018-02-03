class Picture < ApplicationRecord
  belongs_to :post
  has_attached_file :pic, styles: { medium: "300x300>",sqimg: "400x400#", thumb: "100x100>" }, default_url: "imported/no_pic.png"
	validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
