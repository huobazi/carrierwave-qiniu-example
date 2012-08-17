class ScreenshotsController < ApplicationController
  # GET /screenshots
  # GET /screenshots.json
  def index
    @screenshots = Screenshot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @screenshots }
    end
  end

  # GET /screenshots/1
  # GET /screenshots/1.json
  def show
    @screenshot = Screenshot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @screenshot }
    end
  end

  # GET /screenshots/new
  # GET /screenshots/new.json
  def new
    @screenshot = Screenshot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @screenshot }
    end
  end

  # GET /screenshots/1/edit
  def edit
    @screenshot = Screenshot.find(params[:id])
  end

  # POST /screenshots
  # POST /screenshots.json
  def create
    @screenshot = Screenshot.new(params[:screenshot])

    respond_to do |format|
      if @screenshot.save
        format.html { redirect_to @screenshot, notice: 'Screenshot was successfully created.' }
        format.json { render json: @screenshot, status: :created, location: @screenshot }
      else
        format.html { render action: "new" }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /screenshots/1
  # PUT /screenshots/1.json
  def update
    @screenshot = Screenshot.find(params[:id])

    respond_to do |format|
      if @screenshot.update_attributes(params[:screenshot])
        format.html { redirect_to @screenshot, notice: 'Screenshot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenshots/1
  # DELETE /screenshots/1.json
  def destroy
    @screenshot = Screenshot.find(params[:id])
    @screenshot.destroy

    respond_to do |format|
      format.html { redirect_to screenshots_url }
      format.json { head :no_content }
    end
  end
end
