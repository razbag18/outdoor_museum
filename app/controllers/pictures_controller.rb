class PicturesController < ApplicationController

  def new
    @picture = Picture.new
    @picture_image = Picture.all.pluck('img_url').sample
    @google_address_auto = google_auto_complete
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    
    if params[:picture][:street_name] != ""
      result = gmaps.geocode( "#{picture_params[:street_name]}#{params[:picture][:street_name]}" )
      @picture.latitude = result[0][:geometry][:location][:lat]
      @picture.longitude = result[0][:geometry][:location][:lng]
      if @picture.save
        redirect_to '/'
      else
        render :new
      end
    end
  end

  def show
    @picture = Picture.find(params[:id])
    pic_votes = @picture.users_pictures
    total_points = pic_votes.pluck('rating').reduce(:+)
    if total_points 
      @ratings = total_points/pic_votes.length
    else
      @ratings = 0
    end
    @comments = @picture.comments
  end

  def picture_params
    params.require(:picture).permit(:img_url,:street_name, :artist, :title)
  end
end
