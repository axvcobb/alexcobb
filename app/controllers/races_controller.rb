class RacesController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(post_params)

    if @race.save
      redirect_to races_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def post_params
      params.require(:race).permit(:name, :race_date, :city, :state,
                                   :website, :comment)
    end
end
