class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def edit
    end

      # GET /employers/1 or /employers/1.json
  def show
    @users = User.all
  end



    def create
        @user = User.new(user_params)

        respond_to do |format|
        if @user.save 

            format.html { redirect_to employers_path, notice: "Employer was successfully created." }
            format.json { render :show, status: :created, location: @user }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @user.errors, status: :unprocessable_entity }
        end
        end
    end

    # PATCH/PUT /employers/1 or /employers/1.json
    def update
        respond_to do |format|
        if @user.update(employer_params)
            format.html { redirect_to employers_path, notice: "User was successfully updated." }
            format.json { render :show, status: :ok, location: @user }
        else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @user.errors, status: :unprocessable_entity }
        end
        end
    end

    # DELETE /employers/1 or /employers/1.json
    def destroy
        @user.destroy

        respond_to do |format|
        format.html { redirect_to users_url, notice: "Employer was successfully destroyed." }
        format.json { head :no_content }
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
        @user = User.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def user_params
        params.require(:user).permit(:username, :password)
        end
end