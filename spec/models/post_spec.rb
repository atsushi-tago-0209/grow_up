require 'rails_helper'
describe Post do
  describe '#create' do

    it "もれがないように全て記入する" do
      post = build(:post)
      expect(post).to be_valid
    end
    
    it "is invalid without a title" do
      post = build(:post, title: nil)
      post.valid?
      expect(post.errors[:title]).to include("を入力してください")
    end

    it "is invalid without a place" do
      post = build(:post, place: nil)
      post.valid?
      expect(post.errors[:place]).to include("を入力してください")
    end

    it "is invalid without a sentence" do
      post = build(:post, sentence: nil)
      post.valid?
      expect(post.errors[:sentence]).to include("を入力してください")
    end

    it "is invalid without a schedule" do
      post = build(:post, schedule: nil)
      post.valid?
      expect(post.errors[:schedule]).to include("を入力してください")
    end

    it "is invalid without a time" do
      post = build(:post, time: nil)
      post.valid?
      expect(post.errors[:time]).to include("を入力してください")
    end

    it "is invalid without a endtime" do
      post = build(:post, endtime: nil)
      post.valid?
      expect(post.errors[:endtime]).to include("を入力してください")
    end

    it "is invalid without a capacity" do
      post = build(:post, capacity: "")
      post.valid?
      expect(post.errors[:capacity]).to include("を入力してください")
    end

    it "is invalid without a fee" do
      post = build(:post, fee: "")
      post.valid?
      expect(post.errors[:fee]).to include("を入力してください")
    end

  end
end