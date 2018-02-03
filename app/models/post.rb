class Post < ApplicationRecord
  belongs_to :tag
  belongs_to :user
  has_many :bids, :dependent => :destroy
end
