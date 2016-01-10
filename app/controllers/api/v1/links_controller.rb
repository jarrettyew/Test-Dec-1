class Api::V1::LinksController < Api::BaseController
  def index
    links = Link.hottest_first
    render json: links
  end

  def create
    #to be implemented
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
