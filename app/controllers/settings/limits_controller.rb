class Settings::LimitsController < ApplicationController
  before_action :set_limit, only: %i[ edit update ]

  # GET /limits or /limits.json
  def index
    @limit = Limit.order(created_at: :desc).first
  end

  # GET /limits/1/edit
  def edit
  end

  # PATCH/PUT /limits/1 or /limits/1.json
  def update
    respond_to do |format|
      if @limit.update(limit_params)
        format.html { redirect_to settings_limits_url, notice: "Limit was successfully updated." }
        format.json { render :index, status: :ok, location: @limit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @limit.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limit
      @limit = Limit.order(created_at: :desc).first
    end

    # Only allow a list of trusted parameters through.
    def limit_params
      params.require(:limit).permit(:min_value, :max_value)
    end
end
