class ResultsController < ApplicationController
=begin
  def new
    @race = Race.find(params[:race_id])
    @result = @race.result.new
  end

  def create
    @race = Race.find(params[:race_id])
    @result = @race.result.create(result_params)
    redirect_to races_path
  end

  private
    def result_params
      params.require(:result).permit(:gun_time, :chip_time)
    end
=end
end
