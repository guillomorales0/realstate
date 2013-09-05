class LocationsController < ApplicationController
 
  def index
    @locations = Location.all
    @json = Location.all.to_gmaps4rails 
    #@locations = Location.paginate(:page => params[:page], :per_page => 3)
  end 

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    #@location = Location.new(params[:location])
    @location = Location.create(params[:location])
     respond_to do |format|
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.js   
    end
  end

def show
    @location = Location.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end
  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end
end
