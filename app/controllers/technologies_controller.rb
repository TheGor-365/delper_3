class TechnologiesController < ApplicationController
  def new
  end

  def create
    render plain: params[:technology].inspect
  end
end
