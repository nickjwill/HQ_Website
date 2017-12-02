class PagesController < ApplicationController
  def home
    @posts = Afternoon.all
  end

  def faqs
  end
end
