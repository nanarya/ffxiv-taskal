class HomeController < BaseController
  def index
    render json: {'home': 'welcome'}
  end
end
