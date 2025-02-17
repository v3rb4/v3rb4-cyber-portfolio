module ApplicationHelper
  def image_variant_or_default(image, variant, default_path = 'default.jpg')
    if image.attached?
      image.variant(variant)
    else
      default_path
    end
  end
end
