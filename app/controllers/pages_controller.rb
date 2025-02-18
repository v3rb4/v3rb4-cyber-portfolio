class PagesController < ApplicationController
  def home
    @featured_projects = Project.featured.limit(3)
    @latest_posts = BlogPost.published.limit(3)
    @profile_image = nil # will change later
  end

  def about
  end

  def contact
  end
end