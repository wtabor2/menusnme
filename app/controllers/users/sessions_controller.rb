class Users::SessionsController < Devise::SessionsController
  
  # GET /categories/new
  # GET /categories/new.json
  def show
    @user = User.find_by_profile_name(params[:id])
    if @user      
      render action: show
    else
      render file: 'public/404', status: 404, formats: [:html]
    end
    
    #respond_to do |format|
     # format.html # show.html.erb
      #format.json { render json: @user }
    #end
  end
  
  # GET /menus/1/edit
  def edit
    @user = User.find(params[:user_id])
    @menu = Menu.all
  end
  
end
 