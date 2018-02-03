class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, :dependent => :destroy
  has_many :bids, :dependent => :destroy
  has_attached_file :dp, styles: { medium: "300x300>",sqimg: "400x400#", thumb: "100x100>" }, default_url: "imported/no_dp.png"
	validates_attachment_content_type :dp, content_type: /\Aimage\/.*\z/

end
