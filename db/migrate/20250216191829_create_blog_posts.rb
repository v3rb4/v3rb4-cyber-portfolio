class CreateBlogPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :content
      t.string :status
      t.datetime :published_at

      t.timestamps
    end
  end
end
