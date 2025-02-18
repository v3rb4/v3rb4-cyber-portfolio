class Project < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :description, presence: true

  # Add scope for featured projects
  scope :featured, -> { where(featured: true) }

  def technologies_array
    technologies.split(',').map(&:strip) if technologies.present?
  end
end