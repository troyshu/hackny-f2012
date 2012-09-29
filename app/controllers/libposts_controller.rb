class LibpostsController < ApplicationController
  # GET /libposts
  # GET /libposts.json
  def index
    @libposts = Libpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libposts }
    end
  end

  # GET /libposts/1
  # GET /libposts/1.json
  def show
    @libpost = Libpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @libpost }
    end
  end

  # GET /libposts/new
  # GET /libposts/new.json
  def new
    @libpost = Libpost.new
    
    #select a random lib template
    r = Random.new
    lib_id = r.rand(1..Lib.count)
    template = Lib.find_by_id(lib_id)

    logger.debug("random template: #{template.text}") #diagnostic

    #parse out the types
    @frame_text = template.text.split(/\[[a-z0-9]*\]/)
    @types = template.text.scan(/\[[a-z0-9]*\]/)

    logger.debug("frame text: #{frame_text}")
    logger.debug("types: #{types}")



    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @libpost }
    end
  end

  # GET /libposts/1/edit
  def edit
    @libpost = Libpost.find(params[:id])
  end

  # POST /libposts
  # POST /libposts.json
  def create
    @libpost = Libpost.new(params[:libpost])

    respond_to do |format|
      if @libpost.save
        format.html { redirect_to @libpost, notice: 'Libpost was successfully created.' }
        format.json { render json: @libpost, status: :created, location: @libpost }
      else
        format.html { render action: "new" }
        format.json { render json: @libpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /libposts/1
  # PUT /libposts/1.json
  def update
    @libpost = Libpost.find(params[:id])

    respond_to do |format|
      if @libpost.update_attributes(params[:libpost])
        format.html { redirect_to @libpost, notice: 'Libpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @libpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libposts/1
  # DELETE /libposts/1.json
  def destroy
    @libpost = Libpost.find(params[:id])
    @libpost.destroy

    respond_to do |format|
      format.html { redirect_to libposts_url }
      format.json { head :no_content }
    end
  end
end
