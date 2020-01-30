class RacesController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @upcoming_races = Race.all

    @past_races = Race.all

    @five_k_pr = Race.find_by event: '5k'

    @ten_k_pr = Race.find_by event: '10k'

    @half_pr = Race.find_by event: 'Half Marathon'

    @full_pr =  Race.find_by event: 'Marathon'
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
