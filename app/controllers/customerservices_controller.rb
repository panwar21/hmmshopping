class CustomerservicesController < ApplicationController
  before_action :set_customerservice, only: [:show, :edit, :update, :destroy]

  # GET /customerservices
  # GET /customerservices.json





  def contactus
  end
  def faqs
  end
  def help
  end
  def sendfeedback
  end










  def index
    @customerservices = Customerservice.all
  end

  # GET /customerservices/1
  # GET /customerservices/1.json
  def show
  end

  # GET /customerservices/new
  def new
    @customerservice = Customerservice.new
  end

  # GET /customerservices/1/edit
  def edit
  end

  # POST /customerservices
  # POST /customerservices.json
  def create
    @customerservice = Customerservice.new(customerservice_params)

    respond_to do |format|
      if @customerservice.save
        format.html { redirect_to @customerservice, notice: 'Customerservice was successfully created.' }
        format.json { render :show, status: :created, location: @customerservice }
      else
        format.html { render :new }
        format.json { render json: @customerservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerservices/1
  # PATCH/PUT /customerservices/1.json
  def update
    respond_to do |format|
      if @customerservice.update(customerservice_params)
        format.html { redirect_to @customerservice, notice: 'Customerservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerservice }
      else
        format.html { render :edit }
        format.json { render json: @customerservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerservices/1
  # DELETE /customerservices/1.json
  def destroy
    @customerservice.destroy
    respond_to do |format|
      format.html { redirect_to customerservices_url, notice: 'Customerservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerservice
      @customerservice = Customerservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerservice_params
      params[:customerservice]
    end
end
