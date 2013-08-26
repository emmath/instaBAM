class PrettiesController < ApplicationController

  def index
   @pretties = Pretty.all
  end

  def show
     @pretty = Pretty.find(params[:id])
     @images = @pretty.images
  end

  def new
    @pretty = Pretty.new
  end

  def edit
    @pretty = Pretty.find(params[:id])
  end

  def create
    @pretty = Pretty.new(params[:pretty])
    if @pretty.save
      redirect_to @pretty, notice: 'Pretty was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @pretty = Pretty.find(params[:id])
    if @pretty.update_attributes(params[:pretty])
      redirect_to @pretty, notice: 'Pretty was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @pretty = Pretty.find(params[:id])
    @pretty.destroy
      redirect_to pretties_url
  end
end
