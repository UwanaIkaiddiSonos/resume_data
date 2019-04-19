class Api::CapstonesController < ApplicationController
  
  def index
    @capstones = Capstones.all
    render "index.json.jbuilder"
  end

  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:params],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    @capstone.save  
    render "show.json.jbuilder"
  end

   def show
    @capstone = Capstone.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

    def update
      @capstone = Capstone.find_by(id: params[:id])
      @capstone.name = params[:name] || @capstone.name
      @capstone.description = params[:description] || @capstone.description
      @capstone.url = params[:url] || @capstone.url
      @capstone.screenshot = params[:screenshot] || @capstone.screenshot
      @capstone.save
      render "show.json.jbuilder"
    end  

    def destroy
      @capstone = Capstone.find_by(id: params[:id])
      @capstone.destroy
      render json: {message: "Post successfully destroyed!"}
    end
end
