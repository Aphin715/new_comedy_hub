class ComediansController < ApplicationController
  before_action :set_comedian, only: [:show, :edit, :update, :destroy]

  def index
    @comedians= Comedian.order("LOWER(last_name)").paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

  def new
    @comedian = Comedian.new
  end

  def edit
  end

  def create
    @comedian = Comedian.new(comedian_params)

    respond_to do |format|
      if @comedian.save
        format.html { redirect_to @comedian, notice: 'Comedian was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comedian }
      else
        format.html { render action: 'new' }
        format.json { render json: @comedian.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comedian.update(comedian_params)
        format.html { redirect_to @comedian, notice: 'Comedian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comedian.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comedian.destroy
    respond_to do |format|
      format.html { redirect_to comedians_url }
      format.json { head :no_content }
    end
  end

  private
    def set_comedian
      @comedian = Comedian.find(params[:id])
    end

    def comedian_params
      params.require(:comedian).permit(:first_name, :last_name, :bio, :youtube_url, :image)
    end
end
