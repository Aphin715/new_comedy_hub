require 'spec_helper'

describe Show do
  it {should belong_to(:comedy_club)}
  it {should have_many(:acts)}
  it {should validate_presence_of(:comedy_club)}

  describe ".future" do
    it "returns show that are in the future" do
      future_show = FactoryGirl.create(:show, start_time: Time.now + 10.days)
      expect(Show.future).to include future_show
    end

    it "does not return shows that were in the past" do
      past_show = FactoryGirl.create(:show, start_time: Time.now - 10.days)
      expect(Show.future).not_to include past_show
    end

    it "returns shows that are today" do
    todays_show = FactoryGirl.create(:show, start_time: Date.today)
    expect(Show.future).to include todays_show
   end
  end
end
