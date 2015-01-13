require 'rails_helper'

RSpec.describe ReviewsController, :type => :controller do
  describe "Get #index" do
  	it "populates the array with all reviews" do
  		review1 = create(:review)
      review2 = create(:review)
      get :index
      expect(assigns(:reviews)).to eq([review1, review2])
  	end

  	it "renders the :index view" do
  		get :index
  		expect(response).to render_template :index
  	end
  end
end
