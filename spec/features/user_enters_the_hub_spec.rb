require 'spec_helper'

feature " a User sees all the comedians preforming at the different comedy clubs", %Q{

  As someone who goes to comedy clubs
  I want to know all the comedians preforming in Manhattan so that I know who is preforming where
  So that I can make an informed decision on where I want to go
} do

 #Check to see all the comedy clubs
 #Check to see the upcoming comics at each club

  it "sees all the comedy clubs" do
    act = FactoryGirl.create(:act)
    comedian = act.comedian
    comedy_club = act.show.comedy_club

    visit comedy_hub_path

    expect(page).to have_content(comedy_club.name)
    expect(page).to have_content(comedian.first_name)
  end
end

