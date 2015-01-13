require 'rails_helper'

RSpec.describe Review, :type => :model do
  it "is valid with a title and body" do
  	review = create(:review)
  	expect(review.valid?).to be_truthy
  end

  it "is invalid without a title" do
  	review = Review.new(title: nil)
  	expect(review.valid?).to be_falsey
  	expect(review.errors[:title].size).to eq(1)
  end

  it "is invalid without a body" do
  	review = Review.new(body: nil)
  	expect(review.valid?).to be_falsey
  	expect(review.errors[:body].size).to eq(1)
  end
end
