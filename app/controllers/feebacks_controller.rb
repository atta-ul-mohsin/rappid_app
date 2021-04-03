class FeebacksController < ApplicationController
  before_action :set_feeback, only: %i[ show edit update destroy ]

  # GET /feebacks or /feebacks.json
  def index
    @feebacks = Feeback.all
  end

  # GET /feebacks/1 or /feebacks/1.json
  def show
  end

  # GET /feebacks/new
  def new
    @feeback = Feeback.new
  end

  # GET /feebacks/1/edit
  def edit
  end

  # POST /feebacks or /feebacks.json
  def create
    @feeback = Feeback.new(feeback_params)

    respond_to do |format|
      if @feeback.save
        format.html { redirect_to @feeback, notice: "Feeback was successfully created." }
        format.json { render :show, status: :created, location: @feeback }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feeback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feebacks/1 or /feebacks/1.json
  def update
    respond_to do |format|
      if @feeback.update(feeback_params)
        format.html { redirect_to @feeback, notice: "Feeback was successfully updated." }
        format.json { render :show, status: :ok, location: @feeback }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feeback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feebacks/1 or /feebacks/1.json
  def destroy
    @feeback.destroy
    respond_to do |format|
      format.html { redirect_to feebacks_url, notice: "Feeback was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feeback
      @feeback = Feeback.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feeback_params
      params.require(:feeback).permit(:grade, :content, :user_id)
    end
end
