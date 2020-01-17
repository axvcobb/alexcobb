class LabelsController < ApplicationController

  def create
    @label = Label.new(label_params)
    @label.save

    redirect_to new_post_path
  end

  private
    def label_params
      params.require(:label).permit(:label)
    end

end
