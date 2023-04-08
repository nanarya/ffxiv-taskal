require 'rails_helper'

RSpec.describe "/", type: :request do
  describe "GET /" do
    it '200 ok' do
      get '/'
      expect(response).to have_http_status(:ok)
    end
  end
end
