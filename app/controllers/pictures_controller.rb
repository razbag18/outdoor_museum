class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    binding.pry
    if @picture.save
      redirect_to '/'
    else
      render :new
    end
  end



  def picture_params
    params.require(:picture).permit(:img_url,:street_name, :artist, :title)
  end
end
