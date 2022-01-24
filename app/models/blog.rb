class Blog < ApplicationRecord
  mount_uploader :blogger_image, AvatarUploader
  belongs_to :user
  validates :about_blogger, length: { in: 0..150 }
  validates :title, length: { in: 0..100 }

  has_many :taggings , dependent: :destroy
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by!(name: name).blogs
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
