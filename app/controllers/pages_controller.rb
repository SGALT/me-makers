class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about, :blog, :decoration, :tips, :catalogues]

  def home
    if params[:query].present?
      @artisans = User.search_by_specialty(params[:query])
    else
      @artisans = User.where(artisan: true)
      @artisans_sample = @artisans.sort_by { |artisan| artisan.updated_at }.reverse.first(5)
    end
  end

  def contact
  end

  def about
  end

  def blog
  end

  def decoration
  end

  def tips
  end

  def catalogues
  end
end
