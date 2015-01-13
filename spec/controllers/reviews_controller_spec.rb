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

  describe "Get #show" do
  	it "returns the requested review to @review" do
	  	review = create(:review)
	  	get :show, id: review
	  	expect(assigns(:review)).to eq review
    end

    it "renders the :show index" do
    	review = create(:review)
    	get :show, id: review
    	expect(response).to render_template :show
    end
  end

  describe "Get #new" do
  	it "assigns a new review to @review" do
  		get :new
  		expect(assigns(:review)).to be_a_new(Review)
  	end

  	it "renders the new template" do
  		get :new
  		expect(response).to render_template :new
  	end
  end
end
