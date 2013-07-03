class Users::SessionsController < Devise::SessionsController
  
  # GET /categories/new
  # GET /categories/new.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  # GET /menus/1/edit
  def edit
    @user = User.find(params[:id])
    @menu = Menu.all
  end
  
end
