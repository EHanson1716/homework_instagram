class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


# in the show action, use the number after the slash to retrieve the row from the photo table with the corresponding id, and use that row's source value to draw the <img> in the view. Toss in the caption, too.
  def show
    @detail_view = Photo.find(params[:id])
  end

end
