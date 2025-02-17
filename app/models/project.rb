# app/models/project.rb
class Project < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
    attachable.variant :medium, resize_to_fill: [300, 300]
    attachable.variant :large, resize_to_fill: [800, 600]
  end
  
  validates :image, content_type: ['image/png', 'image/jpeg', 'image/jpg'],
                   size: { less_than: 5.megabytes }
end

# app/models/blog_post.rb
class BlogPost < ApplicationRecord
  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
    attachable.variant :medium, resize_to_fill: [400, 300]
    attachable.variant :large, resize_to_fill: [1200, 630]
  end
  
  validates :cover_image, content_type: ['image/png', 'image/jpeg', 'image/jpg'],
                         size: { less_than: 5.megabytes }
end
