class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query].present?
      @artisans = User.search_by_specialty(params[:query])
    else
      @artisans = User.where(artisan: true)
    end
  end

  def contact
  end

  def about
  end
end
