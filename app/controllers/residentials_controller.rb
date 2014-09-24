class ResidentialsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_residential, only: [:show, :edit, :update, :destroy, :vote]

  # GET /residentials
  # GET /residentials.json
  def index
    @residentials = Residential.all
  end

  # GET /residentials/1
  # GET /residentials/1.json
  def show
  end

  # GET /residentials/new
  def new
    @residential = Residential.new
  end

  # GET /residentials/1/edit
  def edit
  end

  # POST /residentials
  # POST /residentials.json
  def create
    @residential = Residential.new(residential_params)
    @residential.user = current_user

    respond_to do |format|
      if @residential.save
        format.html { redirect_to @residential, notice: 'Residential was successfully created.' }
        format.json { render :show, status: :created, location: @residential }
      else
        format.html { render :new }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residentials/1
  # PATCH/PUT /residentials/1.json
  def update
    respond_to do |format|
      if @residential.update(residential_params)
        format.html { redirect_to @residential, notice: 'Residential was successfully updated.' }
        format.json { render :show, status: :ok, location: @residential }
      else
        format.html { render :edit }
        format.json { render json: @residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residentials/1
  # DELETE /residentials/1.json
  def destroy
    @residential.destroy
    respond_to do |format|
      format.html { redirect_to residentials_url, notice: 'Residential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @residential.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residential
      @residential = Residential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residential_params
      params.require(:residential).permit(:user_id, :status, :contract, :product_id)
    end
end
