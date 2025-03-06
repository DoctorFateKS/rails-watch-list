class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(params.require(:bookmark).permit(:title, :url, :description))
    @bookmark.save
    redirect_to @list
  end
end
