class LivingexpensesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :ensure_admin, :only => [:edit,:destroy, :update]
  # GET /livingexpenses
  # GET /livingexpenses.json
  def index
    @livingexpenses = Livingexpense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livingexpenses }
    end
  end

  # GET /livingexpenses/1
  # GET /livingexpenses/1.json
  def show
    @livingexpense = Livingexpense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livingexpense }
    end
  end

  # GET /livingexpenses/new
  # GET /livingexpenses/new.json
  def new
    @livingexpense = Livingexpense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livingexpense }
    end
  end

  # GET /livingexpenses/1/edit
  def edit
    @livingexpense = Livingexpense.find(params[:id])
  end

  # POST /livingexpenses
  # POST /livingexpenses.json
  def create
    @livingexpense = Livingexpense.new(params[:livingexpense])
    a=['City','Country Name','Food Cost','Accomodation Cost','Transportation Cost','User Email']
    b=[params[:livingexpense][:City],params[:livingexpense][:Country_name],params[:livingexpense][:FoodCost],params[:livingexpense][:AccomodationCost],params[:livingexpense][:TransportationCost],params[:livingexpense][:UserID]]
    
    respond_to do |format|
      if Writetocsv.writedata(a,b)
        format.html { redirect_to @livingexpense, notice: 'Thanks for your feedback!' }
        format.json { render json: @livingexpense, status: :created, location: @livingexpense }
      else
        format.html { render action: "new" }
        format.json { render json: @livingexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /livingexpenses/1
  # PUT /livingexpenses/1.json
  def update
    @livingexpense = Livingexpense.find(params[:id])

    respond_to do |format|
      if @livingexpense.update_attributes(params[:livingexpense])
        format.html { redirect_to @livingexpense, notice: 'Livingexpense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @livingexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livingexpenses/1
  # DELETE /livingexpenses/1.json
  def destroy
    @livingexpense = Livingexpense.find(params[:id])
    @livingexpense.destroy

    respond_to do |format|
      format.html { redirect_to livingexpenses_url }
      format.json { head :no_content }
    end
  end
end
