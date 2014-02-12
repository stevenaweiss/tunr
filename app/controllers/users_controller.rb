class UsersController < ApplicationController


  before_action :load_user, only: [:show, :edit, :update, :destroy]

  def show
    render(:show)
  end

  def new
    render :new
  end

 def create
    @user = User.create(user_params)
    logger.debug @user.inspect
    if @user.valid?
      redirect_to "/users/#{@user.id}"
    else
      render(:new)
    end
  end


    def edit
      render :edit
    end

    def update
      @update = @user.update(user_params)

       if @update
      redirect_to "/users/#{@user.id}"
    else
      render(:edit)
    end 
    end

    def destroy
     @user.destroy
     redirect_to("/artists")
   end

   private

   def load_user
    return @user = User.find(params[:id])
    end

  def user_params

    if params[:password].empty?
      return {
        email: params[:email],
        first_name: params[:first_name],
        last_name: params[:last_name],
        dob: params[:dob],
        gender: params[:gender],
        facebook_link: params[:facebook_link]
      }
    else
      return {
        email: params[:email],
        first_name: params[:first_name],
        last_name: params[:last_name],
        dob: params[:dob],
        gender: params[:gender],
        facebook_link: params[:facebook_link],
        password: params[:password]
      }
    end

    
  end

end

