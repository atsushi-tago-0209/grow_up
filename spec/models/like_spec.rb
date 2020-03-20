require 'rails_helper'

describe Like ,type: :model do
  describe '#create' do
    it "is valid with user and post" do
      like = create(:like)
      expect(like).to be_valid
    end
  end
end
