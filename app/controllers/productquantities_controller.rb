class ProductquantitiesController < ApplicationController
  # GET /productquantities
  # GET /productquantities.json
  def index
    @productquantities = Productquantity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productquantities }
    end
  end

  # GET /productquantities/1
  # GET /productquantities/1.json
  def show
    @productquantity = Productquantity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productquantity }
    end
  end

  # GET /productquantities/new
  # GET /productquantities/new.json
  def new
    @productquantity = Productquantity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productquantity }
    end
  end

  # GET /productquantities/1/edit
  def edit
    @productquantity = Productquantity.find(params[:id])
  end

  # POST /productquantities
  # POST /productquantities.json
  def create
    @productquantity = Productquantity.new(params[:productquantity])

    respond_to do |format|
      if @productquantity.save
        format.html { redirect_to @productquantity, notice: 'Productquantity was successfully created.' }
        format.json { render json: @productquantity, status: :created, location: @productquantity }
      else
        format.html { render action: "new" }
        format.json { render json: @productquantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productquantities/1
  # PUT /productquantities/1.json
  def update
    @productquantity = Productquantity.find(params[:id])

    respond_to do |format|
      if @productquantity.update_attributes(params[:productquantity])
        format.html { redirect_to @productquantity, notice: 'Productquantity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productquantity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productquantities/1
  # DELETE /productquantities/1.json
  def destroy
    @productquantity = Productquantity.find(params[:id])
    @productquantity.destroy

    respond_to do |format|
      format.html { redirect_to productquantities_url }
      format.json { head :no_content }
    end
  end
end
