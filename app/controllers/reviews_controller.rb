class ReviewsController < ApplicationController
	before_action :get_review, only: [:show, :edit, :update]

	def index
		@reviews = Review.all
	end

	def show
	end

	def new
    @review = Review.new
	end

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to review_path(@review)
		else
			render :new
		end
	end

	def edit
	end

	def update
    if @review.update(review_params)
    	redirect_to @review
    else
    	render :edit
    end
	end

	private 

	def get_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:title, :body)
	end
end
