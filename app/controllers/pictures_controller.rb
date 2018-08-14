class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = 1
    binding.pry
    if @picture.save
      redirect_to '/'
    else
      render :new
    end
  end



  def picture_params
    params.require(:picture).permit(:street_name, :artist, :title)
  end
end
