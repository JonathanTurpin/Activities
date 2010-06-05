class AttractionsController < ApplicationController

  # POST /attractions
  # POST /attractions.xml
  def create
    @attraction = Attraction.new(params[:attraction])

    respond_to do |format|
      if @attraction.save
        flash[:notice] = 'Attraction was successfully created.'
        format.html { redirect_to(@attraction) }
        format.xml  { render :xml => @attraction, :status => :created, :location => @attraction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attraction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attractions/1
  # DELETE /attractions/1.xml
  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy

    respond_to do |format|
      format.html { redirect_to(attractions_url) }
      format.xml  { head :ok }
    end
  end

  # GET /attractions/1/edit
  def edit
    @attraction = Attraction.find(params[:id])
  end

  # Index
  def index

  end

  # GET /attractions/new
  # GET /attractions/new.xml
  def new
    @attraction = Attraction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attraction }
    end
  end

  # Show a random attraction
  def random
      @attraction = Attraction.find(:first, :order => 'RANDOM()')
    
    respond_to do |format|
      format.html # random.html.erb
      format.xml  { render :xml => @attraction }
    end
  end

  # Show search results
  def results

    @attractions = Attraction.all

    respond_to do |format|
      format.html # results.html.erb
      format.xml  { render :xml => @attractions }
    end
  end

  # GET /attractions/1
  # GET /attractions/1.xml
  def show
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attraction }
    end
  end

  # PUT /attractions/1
  # PUT /attractions/1.xml
  def update
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      if @attraction.update_attributes(params[:attraction])
        flash[:notice] = 'Attraction was successfully updated.'
        format.html { redirect_to(@attraction) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attraction.errors, :status => :unprocessable_entity }
      end
    end
  end

end
