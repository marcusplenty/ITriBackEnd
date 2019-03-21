

class Api::V1::PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    render json: @pictures, status: :ok

  end
  def create
    url = uploadToCloudinary(params["image_url"])
    @picture = Picture.create(img_url: url)
    render json: @picture, status: :ok
  end

  private

 def uploadToCloudinary(imageFile)
  Cloudinary::Uploader.upload(imageFile)["url"]
 end

end
