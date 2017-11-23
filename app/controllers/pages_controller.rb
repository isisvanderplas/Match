class PagesController < ApplicationController


  def static_page
  end

  def home
    @user = current_user
  end
end
