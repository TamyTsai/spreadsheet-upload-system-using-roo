class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # require 'roo'
  # 有在Gemfile裡寫這個套件，所以不用另外require，跑rails s就會自動require

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy!

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def import
    # puts params
    excel = Roo::Spreadsheet.open(params[:excel_file].path)

    excel.each_row_streaming(offset: 1) do |row| # 去掉表頭(第一列)
      user = User.new
      # row[0] && row[0].value
      user.name = row[0]&.value # 將excel檔案的第一「欄」資料的值存進user實體中的name欄位 # & 用來確保欄位有值
      user.age = row[1]&.value
      user.save # 存入資料庫
    end

    flash[:success] = "資料已儲存完成"
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :age)
    end
end
