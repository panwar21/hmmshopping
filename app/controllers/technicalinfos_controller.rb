class TechnicalinfosController < ApplicationController
  before_action :set_technicalinfo, only: [:show, :edit, :update, :destroy]

  # GET /technicalinfos
  # GET /technicalinfos.json


   def mobileapps
   end
   def tools
   end
   def downloads
   end


  def index
    @technicalinfos = Technicalinfo.all
  end

  # GET /technicalinfos/1
  # GET /technicalinfos/1.json
  def show
  end

  # GET /technicalinfos/new
  def new
    @technicalinfo = Technicalinfo.new
  end

  # GET /technicalinfos/1/edit
  def edit
  end

  # POST /technicalinfos
  # POST /technicalinfos.json
  def create
    @technicalinfo = Technicalinfo.new(technicalinfo_params)

    respond_to do |format|
      if @technicalinfo.save
        format.html { redirect_to @technicalinfo, notice: 'Technicalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @technicalinfo }
      else
        format.html { render :new }
        format.json { render json: @technicalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technicalinfos/1
  # PATCH/PUT /technicalinfos/1.json
  def update
    respond_to do |format|
      if @technicalinfo.update(technicalinfo_params)
        format.html { redirect_to @technicalinfo, notice: 'Technicalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @technicalinfo }
      else
        format.html { render :edit }
        format.json { render json: @technicalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technicalinfos/1
  # DELETE /technicalinfos/1.json
  def destroy
    @technicalinfo.destroy
    respond_to do |format|
      format.html { redirect_to technicalinfos_url, notice: 'Technicalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technicalinfo
      @technicalinfo = Technicalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technicalinfo_params
      params[:technicalinfo]
    end
end
