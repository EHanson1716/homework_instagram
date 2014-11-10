class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


# in the show action, use the number after the slash to retrieve the row from the photo table with the corresponding id, and use that row's source value to draw the <img> in the view. Toss in the caption, too.
  def show
    @detail_view = Photo.find(params[:id])
  end

  def new_form
    #abc
  end

  def create_row
    new_row = Photo.new
    new_row.source = params[:the_source]
    new_row.caption = params[:the_caption]
    new_row.save

    @test = new_row
  end

  def destroy
    target_row = Photo.find(params[:id])
    target_row.destroy

    @list_of_photos = Photo.all

    render 'index'
  end


end
