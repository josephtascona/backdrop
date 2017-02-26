class Image < ApplicationRecord
  searchkick
  acts_as_votable
  belongs_to :user
  validates_presence_of :image, :title
  has_attached_file :image, styles: { medium: "1154x1568#", small:"1154x784#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
