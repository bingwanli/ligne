class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def recs
    @brands = current_user.liked_brands
  end
end
