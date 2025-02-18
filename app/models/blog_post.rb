class BlogPost < ApplicationRecord
  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
    attachable.variant :medium, resize_to_fill: [400, 300]
    attachable.variant :large, resize_to_fill: [1200, 630]
  end

  include ActiveStorage::Validations

  validates :cover_image, attached: true, 
                          content_type: ['image/png', 'image/jpeg', 'image/jpg'],
                          size: { less_than: 5.megabytes }
end