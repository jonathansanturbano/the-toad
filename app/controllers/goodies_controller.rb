class GoodiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @goodies = Goodie.all
  end

  def show
    @goodie = Goodie.find(params[:id])
  end
end
