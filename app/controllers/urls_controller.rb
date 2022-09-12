require 'securerandom'

class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    
  end

  def create
    @url = Url.new
    @url.name = "sample"
    @url.long_url = params[:url]
    @url.short_code = SecureRandom.urlsafe_base64(6)
    if @url.save
      return redirect_to urls_path, status: 301
    end
    render json: {msg: 'something failed...'}, stauts: 404
  end
  
  def redirect
    @short_code = params[:id] 
    url_data = Url.find_by(short_code: @short_code)
    url = url_data.long_url
    redirect_to("https://" + url ,allow_other_host: true)
  end
  
  def signup
  end
  

end
