class SupportEmailsController < ApplicationController
  before_action :set_support_email, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /support_emails
  # GET /support_emails.json
  def index
    @support_emails = SupportEmail.all
  end

  # GET /support_emails/1
  # GET /support_emails/1.json
  def show
  end

  # GET /support_emails/new
  def new
    @support_email = SupportEmail.new
  end

  # GET /support_emails/1/edit
  def edit
  end

  # POST /support_emails
  # POST /support_emails.json
  def create
    @support_email = SupportEmail.new(support_email_params)
    # respond_to do |format|
      # SupportEmail.destroy_all
      if @support_email.save
        redirect_to support_emails_path
        flash[:notice] = 'Support email was successfully created.'
        # format.html { redirect_to @support_email, notice: 'Support email was successfully created.' }
        # format.json { render :show, status: :created, location: @support_email }
      else
        flash[:error] = 'Something went Wrong.'
        render new
        # format.html { render :new }
        # format.json { render json: @support_email.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /support_emails/1
  # PATCH/PUT /support_emails/1.json
  def update
    respond_to do |format|
      if @support_email.update(support_email_params)
        format.html { redirect_to @support_email, notice: 'Support email was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_email }
      else
        format.html { render :edit }
        format.json { render json: @support_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_emails/1
  # DELETE /support_emails/1.json
  def destroy
    @support_email.destroy
    respond_to do |format|
      format.html { redirect_to support_emails_url, alert: 'Support email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_email
      @support_email = SupportEmail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def support_email_params
      params.require(:support_email).permit(:email)
    end
end
