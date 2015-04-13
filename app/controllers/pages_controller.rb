class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @page = Page.new
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # POST /pages
  # POST /pages.json
  def create
    respond_to do |format|
      begin
        @page = Page.create_page!
        format.html { redirect_to "/#{@page.request_id}/inspect", notice: t('pages.create.success') }
        format.json { render action: 'show', status: :created, location: @page }
      rescue => e
        format.html { render action: 'index' }
        format.json { render json: {:message => "create page error"}, status: :unprocessable_entity }
      end
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.where(:request_id => params[:request_id]).first
    end

end
