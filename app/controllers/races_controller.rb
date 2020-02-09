class RacesController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @upcoming_races = Race.where("race_date >= ?", DateTime.now).order(:race_date)

    @past_races = Race.where("race_date < ?", DateTime.now).or(Race.where(race_date: nil)).order(race_date: :desc)

=begin
    @five_k_pr = Race.find_by event: '5k'

    @ten_k_pr = Race.find_by event: '10k'

    @half_pr = Race.find_by event: 'Half Marathon'

    @full_pr =  Race.find_by event: 'Marathon'
=end
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)

    if @race.save
      redirect_to races_path
    else
      render 'new'
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])

    if @race.update(race_params)
      redirect_to races_path
    else
      render 'edit'
    end
  end

  def destroy
    @race = Race.find(params[:id])
    @race.destroy

    redirect_to races_path
  end

  private
    def race_params
      params.require(:race).permit(:name, :event, :race_date, :location,
                                   :website, :comment)
    end
end
