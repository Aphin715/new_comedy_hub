require 'spec_helper'

feature "user creates a show", %Q{
  As a user
  I want to add a show
  So that others can see who will be perfoming
} do

  # Acceptance Criteria
  # * I must be signed in
  # * I must provide a title, start time, and end time
  # * I must choose which comedy club the show is at
  # * I can choose which comedians are in the show\

  let!(:user) { FactoryGirl.create(:user) }
  let!(:comedy_club) { FactoryGirl.create(:comedy_club) }
  let!(:comedian) { FactoryGirl.create(:comedian) }

  scenario "user creates a valid show" do
    sign_in_as(user)
    visit new_show_path

    select comedy_club.name, from: "Comedy club"
    select comedian.name, from: "Comedian ids"
    fill_in "Title", with: "Awesome show"
    click_on "Create Show"

    expect(page).to have_content "Show was successfully created"
    expect(page).to have_content comedian.name
  end
end
