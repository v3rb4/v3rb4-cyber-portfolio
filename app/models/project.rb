class Project < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :description, presence: true
  
  scope :featured, -> { where(featured: true) }
  
  def technologies_array
    technologies.split(',').map(&:strip) if technologies.present?
  end
end