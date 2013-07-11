class ProfilesController < ApplicationController
  def show
    @user = User.find_by_profile_name(params[:id])
    if @user
      @menu = Menu.all
      
      
      respond_to do |format|
      if @user.save
        format.html { redirect_to :show, notice: 'Menu was successfully Liked.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        render :show
      end
    end
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
    
  end
end
