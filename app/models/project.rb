class Project < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
    attachable.variant :medium, resize_to_fill: [300, 300]
    attachable.variant :large, resize_to_fill: [800, 600]
  end

  validate :image_validation

  private

  def image_validation
    return unless image.attached?

    # Проверяем content type
    unless image.content_type.in?(%w[image/png image/jpeg image/jpg])
      errors.add(:image, 'must be a PNG or JPG')
    end

    if image.byte_size > 5.megabytes
      errors.add(:image, 'size must be less than 5MB')
    end
  end
end