class Image < ApplicationRecord
  searchkick
  acts_as_votable
  belongs_to :user
  validates_presence_of :image, :title
  has_attached_file :image, styles: { medium: "1176x1568#", small:"1176x784#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
