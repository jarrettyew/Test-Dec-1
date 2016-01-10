class LinksController < ApplicationController
  
  def index
  	@links = Link.all
  end
  
  def new
  	
  end

  def create
  	@link = Link.new(link_params)
  		if @link.save
  			flash[:message] = "Successful"
  			redirect_to link_path
  		else
  			render :new
  		end
  end

	private

		def link_params
			params.require(:link).permit(:title, :url, :image)
		end
end
