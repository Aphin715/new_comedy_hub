# require 'spec_helper'

# feature " User can sign in " ,%Q{
# As an unathenticated user
# I want to sign in
# So that I can take advantage of member privileges
# } do

#     #   Acceptance Criteria

#     # * User must supply email and password
#     # *If email and password are correct they can enter the site
#     # *If they are not correct they can are presented with an error
#     # *if they do not remember their password they can have their password sent to their email

# # it " is able to sign in with valid information"

# #   visit "/signin"
# #   fill_in "Email", with: "AlexPhin@gmail.com"
# #   fill_in "Password", with: "foobar"
# #   click_on "Submit"
# #   expect(page).to have_content("You are successfully signed in")

# # it ""

# # describe "Authentication" do

# #   subject { page }



# #     describe "with valid information" do
# #       let(:user) { FactoryGirl.create(:user) }
# #         visit "/signin"
# #         fill_in "Email",    with: user.email.upcase
# #         fill_in "Password", with: user.password
# #         click_button "Sign in"
# #       end

# #       it { should have_title(user.name) }
# #       it { should have_link('Profile',     href: user_path(user)) }
# #       it { should have_link('Sign out',    href: signout_path) }
# #       it { should_not have_link('Sign in', href: signin_path) }

# #       describe "followed by signout" do
# #         before { click_link "Sign out" }
# #         it { should have_link('Sign in') }
# #       end
# #     end
# #   end
# describe "authorization" do

#     describe "for non-signed-in users" do
#       let(:user) { FactoryGirl.create(:user) }

#       describe "in the Users controller" do

#         describe "visiting the edit page" do
#           before { visit edit_user_path(user) }
#           it { should have_title('Sign in') }
#         end

#         describe "submitting to the update action" do
#           before { patch user_path(user) }
#           specify { expect(response).to redirect_to(signin_path) }
#         end
#       end
#     end

