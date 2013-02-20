class ApplicsController < ApplicationController
  # GET /applics
  # GET /applics.json
  def index
    @applics = Applic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applics }
    end
  end

  # GET /applics/1
  # GET /applics/1.json
  def show
    @applic = Applic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applic }
    end
  end

  # GET /applics/new
  # GET /applics/new.json
  def new
    @applic = Applic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applic }
    end
  end

  # GET /applics/1/edit
  def edit
    @applic = Applic.find(params[:id])
  end

  # POST /applics
  # POST /applics.json
  def create
    @applic = Applic.new(params[:applic])

    respond_to do |format|
      if @applic.save
        format.html { redirect_to @applic, notice: 'Applic was successfully created.' }
        format.json { render json: @applic, status: :created, location: @applic }
      else
        format.html { render action: "new" }
        format.json { render json: @applic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applics/1
  # PUT /applics/1.json
  def update
    @applic = Applic.find(params[:id])

    respond_to do |format|
      if @applic.update_attributes(params[:applic])
        format.html { redirect_to @applic, notice: 'Applic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applics/1
  # DELETE /applics/1.json
  def destroy
    @applic = Applic.find(params[:id])
    @applic.destroy

    respond_to do |format|
      format.html { redirect_to applics_url }
      format.json { head :no_content }
    end
  end
end
