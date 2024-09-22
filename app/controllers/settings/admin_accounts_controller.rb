class Settings::AdminAccountsController < ApplicationController
  before_action :set_admin_account, only: %i[ show edit update destroy ]

  # GET /admin_accounts or /admin_accounts.json
  def index
    @admin_accounts = AdminAccount.all
  end

  # GET /admin_accounts/1 or /admin_accounts/1.json
  def show
  end

  # GET /admin_accounts/new
  def new
    @admin_account = AdminAccount.new
    @account_types = AccountType.all
  end

  # GET /admin_accounts/1/edit
  def edit
    @account_types = AccountType.all
  end

  # POST /admin_accounts or /admin_accounts.json
  def create
    @admin_account = AdminAccount.new(admin_account_params)
    @admin_account.user = current_user

    respond_to do |format|
      if @admin_account.save
        format.html { redirect_to settings_admin_accounts_url, notice: "Admin account was successfully created." }
        format.json { render :show, status: :created, location: @admin_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_accounts/1 or /admin_accounts/1.json
  def update
    respond_to do |format|
      if @admin_account.update(admin_account_params)
        format.html { redirect_to settings_admin_accounts_url, notice: "Admin account was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_accounts/1 or /admin_accounts/1.json
  def destroy
    @admin_account.destroy

    respond_to do |format|
      format.html { redirect_to settings_admin_accounts_url, notice: "Admin account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_account
      @admin_account = AdminAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_account_params
      params.require(:admin_account).permit(:user_id, :account_type_id, :account_number, :account_name)
    end
end
