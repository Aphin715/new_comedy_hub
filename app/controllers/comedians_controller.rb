class ComediansController < ApplicationController
  before_action :set_comedian, only: [:show, :edit, :update, :destroy]

  # GET /comedians
  # GET /comedians.json
  def index
    @comedians = Comedian.all
  end

  # GET /comedians/1
  # GET /comedians/1.json
  def show
  end

  # GET /comedians/new
  def new
    @comedian = Comedian.new
  end

  # GET /comedians/1/edit
  def edit
  end

  # POST /comedians
  # POST /comedians.json
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

  # PATCH/PUT /comedians/1
  # PATCH/PUT /comedians/1.json
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

  # DELETE /comedians/1
  # DELETE /comedians/1.json
  def destroy
    @comedian.destroy
    respond_to do |format|
      format.html { redirect_to comedians_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comedian
      @comedian = Comedian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comedian_params
      params.require(:comedian).permit(:first_name, :last_name, :bio, :youtube_url)
    end
end
