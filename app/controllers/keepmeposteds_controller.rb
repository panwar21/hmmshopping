class KeepmepostedsController < ApplicationController
  before_action :set_keepmeposted, only: [:show, :edit, :update, :destroy]

  # GET /keepmeposteds
  # GET /keepmeposteds.json



    def subscribe
    end
    def viewnotifications
    end







  def index
    @keepmeposteds = Keepmeposted.all
  end

  # GET /keepmeposteds/1
  # GET /keepmeposteds/1.json
  def show
  end

  # GET /keepmeposteds/new
  def new
    @keepmeposted = Keepmeposted.new
  end

  # GET /keepmeposteds/1/edit
  def edit
  end

  # POST /keepmeposteds
  # POST /keepmeposteds.json
  def create
    @keepmeposted = Keepmeposted.new(keepmeposted_params)

    respond_to do |format|
      if @keepmeposted.save
        format.html { redirect_to @keepmeposted, notice: 'Keepmeposted was successfully created.' }
        format.json { render :show, status: :created, location: @keepmeposted }
      else
        format.html { render :new }
        format.json { render json: @keepmeposted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keepmeposteds/1
  # PATCH/PUT /keepmeposteds/1.json
  def update
    respond_to do |format|
      if @keepmeposted.update(keepmeposted_params)
        format.html { redirect_to @keepmeposted, notice: 'Keepmeposted was successfully updated.' }
        format.json { render :show, status: :ok, location: @keepmeposted }
      else
        format.html { render :edit }
        format.json { render json: @keepmeposted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keepmeposteds/1
  # DELETE /keepmeposteds/1.json
  def destroy
    @keepmeposted.destroy
    respond_to do |format|
      format.html { redirect_to keepmeposteds_url, notice: 'Keepmeposted was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keepmeposted
      @keepmeposted = Keepmeposted.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keepmeposted_params
      params[:keepmeposted]
    end
end
