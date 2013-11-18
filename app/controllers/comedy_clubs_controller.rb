class ComedyClubsController < ApplicationController
  before_action :set_comedy_club, only: [:show, :edit, :update, :destroy]


  def index
    @comedy_clubs = ComedyClub.order("LOWER(name)")
  end


  def show
    @comedy_club = ComedyClub.find(params[:id])
    #Use this when you want to scrape...
    #@comedy_club.update_shows
  end

  def new
    @comedy_club = ComedyClub.new
  end

  def edit
  end

  def create
    @comedy_club = ComedyClub.new(comedy_club_params)

    respond_to do |format|
      if @comedy_club.save
        format.html { redirect_to @comedy_club, notice: 'Comedy club was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comedy_club }
      else
        format.html { render action: 'new' }
        format.json { render json: @comedy_club.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comedy_club.update(comedy_club_params)
        format.html { redirect_to @comedy_club, notice: 'Comedy club was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comedy_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comedy_clubs/1
  # DELETE /comedy_clubs/1.json
  def destroy
    @comedy_club.destroy
    respond_to do |format|
      format.html { redirect_to comedy_clubs_url }
      format.json { head :no_content }
    end
  end

  private
    def set_comedy_club
      @comedy_club = ComedyClub.find(params[:id])
    end

    def comedy_club_params
      params.require(:comedy_club).permit(:name, :location, :website, :description, :image)
    end
end
