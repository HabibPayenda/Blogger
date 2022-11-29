require 'rails_helper'

RSpec.describe 'PostsController', type: :request do
  describe 'GET posts_controller#index' do
    before(:example) { get '/users/:user_id/posts' }

    it 'gives the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'is rendering the correct template' do
      expect(response).to render_template(:index)
    end

    it 'is having the correct body' do
      expect(response.body).to include('showing all posts for user with id:')
    end
  end

  describe 'GET posts_controller#show' do
    before(:example) { get '/users/:user_id/posts/:post_id' }

    it 'gives the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'is rendering the correct template' do
      expect(response).to render_template(:show)
    end

    it 'is having the correct body' do
      expect(response.body).to include('showing post with id')
    end
  end
end
