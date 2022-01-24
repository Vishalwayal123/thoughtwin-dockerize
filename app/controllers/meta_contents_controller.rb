class MetaContentsController < ApplicationController
  before_action :ensure_admin, only: [:new, :edit, :update, :destroy]

  # GET /meta_contents
  # GET /meta_contents.json
  def index
    @meta_contents = MetaContent.all
  end

  # GET /meta_contents/1
  # GET /meta_contents/1.json
  def show
    @meta_content = MetaContent.find(params[:id])
  end

  # GET /meta_contents/new
  def new
    @meta_content = MetaContent.new
  end

  # GET /meta_contents/1/edit
  def edit
    @meta_content = MetaContent.find(params[:id])
  end

  # POST /meta_contents
  # POST /meta_contents.json
  def create
    @meta_content = MetaContent.new(meta_content_params)

    respond_to do |format|
      @previous_content = MetaContent.where(page: params["meta_content"]['page'])
      @previous_content.delete_all if @previous_content
      if @meta_content.save
        format.html { redirect_to @meta_content, notice: 'Meta content was successfully created.' }
        format.json { render :show, status: :created, location: @meta_content }
      else
        format.html { render :new }
        format.json { render json: @meta_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meta_contents/1
  # PATCH/PUT /meta_contents/1.json
  def update
    respond_to do |format|
      @meta_content = MetaContent.find(params[:id])
      if @meta_content.update(meta_content_params)
        format.html { redirect_to @meta_content, notice: 'Meta content was successfully updated.' }
        format.json { render :show, status: :ok, location: @meta_content }
      else
        format.html { render :edit }
        format.json { render json: @meta_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_contents/1
  # DELETE /meta_contents/1.json
  def destroy
    @meta_content.destroy
    respond_to do |format|
      format.html { redirect_to meta_contents_url, notice: 'Meta content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ensure_admin
    if @check_user || @is_metatags 
    else
      redirect_to meta_contents_path
      flash[:error] = 'You are not authorized to this path'
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meta_content
      @meta_content = MetaContent.find(params[:id])
    end
    
    # Only allow a list of trusted parameters through.
    def meta_content_params
      params.require(:meta_content).permit(:title, :description, :website, :keyword, :page)
    end
end
