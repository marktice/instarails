class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @media = Medium.order('created_at DESC').limit(10)
  end
end