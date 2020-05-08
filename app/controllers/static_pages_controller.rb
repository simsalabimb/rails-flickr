class StaticPagesController < ApplicationController
  def home
     if params[:flickr_id]
      @flickr_id = params[:flickr_id]
      @photos = flickr.photos.search(user_id: @flickr_id)
      @photos
     end
  end
end
