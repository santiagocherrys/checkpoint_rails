class ImagecsController < ApplicationController
  before_action :set_imagec, only: %i[ show edit update destroy ]

  # GET /imagecs or /imagecs.json
  def index
    @imagecs = Imagec.all
  end

  # GET /imagecs/1 or /imagecs/1.json
  def show
  end

  # GET /imagecs/new
  def new
    @imagec = Imagec.new
  end

  # GET /imagecs/1/edit
  def edit
  end

  # POST /imagecs or /imagecs.json
  def create
    @imagec = Imagec.new(imagec_params)

    respond_to do |format|
      if @imagec.save
        format.html { redirect_to @imagec, notice: t("imagecs.created") }
        format.json { render :show, status: :created, location: @imagec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imagec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagecs/1 or /imagecs/1.json
  def update
    
  end

  # DELETE /imagecs/1 or /imagecs/1.json
  def destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagec
      @imagec = Imagec.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagec_params
      params.require(:imagec).permit(:name, :description, :avatar)
    end
end
