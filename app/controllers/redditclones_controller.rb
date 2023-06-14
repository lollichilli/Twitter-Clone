class RedditclonesController < ApplicationController
  before_action :set_redditclone, only: %i[ show edit update destroy ]

  # GET /redditclones or /redditclones.json
  def index
    @redditclones = Redditclone.all
  end

  # GET /redditclones/1 or /redditclones/1.json
  def show
  end

  # GET /redditclones/new
  def new
    @redditclone = Redditclone.new
  end

  # GET /redditclones/1/edit
  def edit
  end

  # POST /redditclones or /redditclones.json
  def create
    @redditclone = Redditclone.new(redditclone_params)

    respond_to do |format|
      if @redditclone.save
        format.html { redirect_to redditclone_url(@redditclone), notice: "Redditclone was successfully created." }
        format.json { render :show, status: :created, location: @redditclone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @redditclone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redditclones/1 or /redditclones/1.json
  def update
    respond_to do |format|
      if @redditclone.update(redditclone_params)
        format.html { redirect_to redditclone_url(@redditclone), notice: "Redditclone was successfully updated." }
        format.json { render :show, status: :ok, location: @redditclone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @redditclone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redditclones/1 or /redditclones/1.json
  def destroy
    @redditclone.destroy

    respond_to do |format|
      format.html { redirect_to redditclones_url, notice: "Redditclone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redditclone
      @redditclone = Redditclone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redditclone_params
      params.require(:redditclone).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
