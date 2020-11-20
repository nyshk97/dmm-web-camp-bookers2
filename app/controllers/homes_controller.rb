class HomesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def about
  end
end
