class TravelersController < ApplicationController
  # GET /travelers
  # GET /travelers.json
  def index
    @travelers = Traveler.all
  end

  # GET /travelers/1
  # GET /travelers/1.json
  def show
    @traveler = Traveler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @traveler }
    end
  end

  # GET /travelers/new
  # GET /travelers/new.json
  def new
    @traveler = Traveler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @traveler }
    end
  end

  # GET /travelers/1/edit
  def edit
    @traveler = Traveler.find(params[:id])
  end

  # POST /travelers
  # POST /travelers.json
  def create
    @traveler = Traveler.new(params[:traveler])

    respond_to do |format|
      if @traveler.save
        format.html { redirect_to @traveler, notice: 'Traveler was successfully created.' }
        format.json { render json: @traveler, status: :created, location: @traveler }
      else
        format.html { render action: "new" }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /travelers/1
  # PUT /travelers/1.json
  def update
    @traveler = Traveler.find(params[:id])

    respond_to do |format|
      if @traveler.update_attributes(params[:traveler])
        format.html { redirect_to @traveler, notice: 'Traveler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @traveler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travelers/1
  # DELETE /travelers/1.json
  def destroy
    @traveler = Traveler.find(params[:id])
    @traveler.destroy

    respond_to do |format|
      format.html { redirect_to travelers_url }
      format.json { head :no_content }
    end
  end
end
