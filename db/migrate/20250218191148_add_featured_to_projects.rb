class AddFeaturedToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :featured, :boolean
  end
end
