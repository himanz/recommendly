class ReviewsController < ApplicationController
	before_action :get_review, only: [:show]

	def index
		@reviews = Review.all
	end

	def show
	end

	def new
    @review = Review.new
	end

	private 

	def get_review
		@review = Review.find(params[:id])
	end
end
