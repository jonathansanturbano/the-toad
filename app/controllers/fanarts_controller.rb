class FanartsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @fanarts = Fanart.all
  end
end
