class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
  end

  def new
  end

  def create
    @technology = Technology.new(technology_params)

    if @technology.valid?
      @technology.save

      redirect_to @technology
    else
      render action 'new'
    end
  end

  def edit
    @technology = Technology.find(params[:id])
  end

  def update
    @technology = Technology.find(params[:id])

    if @technology.update(technology_params)
      redirect_to @technology
    else
      render action 'edit'
    end
  end

  private
  def technology_params
    params.require(:technology).permit(:title, :purpose, :description, :doc_link, :global_rating)
  end
end
