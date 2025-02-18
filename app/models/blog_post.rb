class BlogPost < ApplicationRecord
  has_one_attached :cover_image
  
  validates :title, presence: true
  validates :content, presence: true
  validates :status, presence: true, inclusion: { in: %w[draft published] }
  
  scope :published, -> { where(status: 'published').order(published_at: :desc) }
  scope :drafts, -> { where(status: 'draft').order(created_at: :desc) }
end