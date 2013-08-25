class PrettiesController < ApplicationController
  # GET /pretties
  # GET /pretties.json
  def index
   @pretties = Pretty.all
  end

  # GET /pretties/1
  # GET /pretties/1.json
  def show
     @pretty = Pretty.get_specific
  end

  # GET /pretties/new
  # GET /pretties/new.json
  def new
    @pretty = Pretty.new
  end

  # GET /pretties/1/edit
  def edit
    @pretty = Pretty.find(params[:id])
  end

  # POST /pretties
  # POST /pretties.json
  def create
    @pretty = Pretty.new(params[:pretty])

    respond_to do |format|
      if @pretty.save
        format.html { redirect_to @pretty, notice: 'Pretty was successfully created.' }
        format.json { render json: @pretty, status: :created, location: @pretty }
      else
        format.html { render action: "new" }
        format.json { render json: @pretty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pretties/1
  # PUT /pretties/1.json
  def update
    @pretty = Pretty.find(params[:id])

    respond_to do |format|
      if @pretty.update_attributes(params[:pretty])
        format.html { redirect_to @pretty, notice: 'Pretty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pretty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pretties/1
  # DELETE /pretties/1.json
  def destroy
    @pretty = Pretty.find(params[:id])
    @pretty.destroy

    respond_to do |format|
      format.html { redirect_to pretties_url }
      format.json { head :no_content }
    end
  end
end
