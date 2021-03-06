class LessonsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]
  
  def create
    @technology = Technology.find(params[:technology_id])
    @technology.lessons.create(lesson_params)

    redirect_to technology_path(@technology)
  end

  private
  def lesson_params
    params.require(:lesson).permit(
      :technology_title,
      :author,
      :topic,
      :purpose,
      :questions,
      :answer,
      :content,
      :examples,
      :link,
      :rating
    )
  end
end
