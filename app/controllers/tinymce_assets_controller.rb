class TinymceAssetsController < ApplicationController
  #  def create
  #   # Take upload from params[:file] and store it somehow...
  #   # Optionally also accept params[:hint] and consume if needed
  #   image = params[:file]
  #   render json: {
  #     image: {
  #       url: view_context.image_url(image)
  #     }
  #   }, content_type: "text/html"
  # end
  def create
    @image =  params[:file]
    image  = Image.create params.permit(:file, :alt, :hint)

    render json: {
      image: {
        url:    image.file.url
      }
    }, layout: false, content_type: "text/html"
  end
end