class StoresController < ApplicationController

  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.location(params[:fstate],params[:fcity])

    # dropmenu states
    @states = State.all
    @states_for_dropdown = []
    @states.each do |i|
      @states_for_dropdown = @states_for_dropdown << [i.name,i.name]
    end
    
    #dropmenu cities
    @cities = City.all
    @cities_for_dropdown = []
    @cities.each do |i|
      @cities_for_dropdown = @cities_for_dropdown << [i.name,i.name,{:class => i.state.name}]
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @stores }
    end
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @store = Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @store }
    end
  end

  # GET /stores/new
  # GET /stores/new.json
  def new
    @store = Store.new
    @cities = City.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @store }
    end
  end

  # GET /stores/1/edit
  def edit
    @store = Store.find(params[:id])
    @cities = City.new
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(params[:store])

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, :notice => 'Store was successfully created.' }
        format.json { render :json => @store, :status => :created, :location => @store }
      else
        format.html { render :action => "new" }
        format.json { render :json => @store.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stores/1
  # PUT /stores/1.json
  def update
    @store = Store.find(params[:id])

    respond_to do |format|
      if @store.update_attributes(params[:store])
        format.html { redirect_to @store, :notice => 'Store was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @store.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store = Store.find(params[:id])
    @store.destroy

    respond_to do |format|
      format.html { redirect_to stores_url }
      format.json { head :no_content }
    end
  end


end
