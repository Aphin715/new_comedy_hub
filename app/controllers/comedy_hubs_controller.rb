class ComedyHubsController < ApplicationController
def show
  @clubs = ComedyClub.all
end
end
