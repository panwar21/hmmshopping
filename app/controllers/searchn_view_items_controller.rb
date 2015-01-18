class SearchnViewItemsController < ApplicationController
  before_action :set_searchn_view_item, only: [:show, :edit, :update, :destroy]

  # GET /searchn_view_items
  # GET /searchn_view_items.json

  def searchanitem
  end
  def viewanitem
  end
  def viewrecommendeditems
  end


  def index
    @searchn_view_items = SearchnViewItem.all
  end

  # GET /searchn_view_items/1
  # GET /searchn_view_items/1.json
  def show
  end

  # GET /searchn_view_items/new
  def new
    @searchn_view_item = SearchnViewItem.new
  end

  # GET /searchn_view_items/1/edit
  def edit
  end

  # POST /searchn_view_items
  # POST /searchn_view_items.json
  def create
    @searchn_view_item = SearchnViewItem.new(searchn_view_item_params)

    respond_to do |format|
      if @searchn_view_item.save
        format.html { redirect_to @searchn_view_item, notice: 'Searchn view item was successfully created.' }
        format.json { render :show, status: :created, location: @searchn_view_item }
      else
        format.html { render :new }
        format.json { render json: @searchn_view_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searchn_view_items/1
  # PATCH/PUT /searchn_view_items/1.json
  def update
    respond_to do |format|
      if @searchn_view_item.update(searchn_view_item_params)
        format.html { redirect_to @searchn_view_item, notice: 'Searchn view item was successfully updated.' }
        format.json { render :show, status: :ok, location: @searchn_view_item }
      else
        format.html { render :edit }
        format.json { render json: @searchn_view_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searchn_view_items/1
  # DELETE /searchn_view_items/1.json
  def destroy
    @searchn_view_item.destroy
    respond_to do |format|
      format.html { redirect_to searchn_view_items_url, notice: 'Searchn view item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_searchn_view_item
      @searchn_view_item = SearchnViewItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def searchn_view_item_params
      params[:searchn_view_item]
    end
end
