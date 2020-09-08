class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bio]
  skip_before_action :verify_authenticity_token, only: :checkout


  def home
    @homephotos = Homephoto.all.order(:order)
    @book = Book.find_by(category: "signed")
  end

  def bio
    @illustrators = Illustrator.all
  end

  def checkout
    @basket.update(status: "approved")
  end
end
