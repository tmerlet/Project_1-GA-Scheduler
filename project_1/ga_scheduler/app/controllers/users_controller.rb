class UsersController < ApplicationController

  load_and_authorize_resource

 def index
  @users = User.all
 end
 
 def new
  @user = User.new
 end
 
 def edit
   @user = User.find(params[:id])
 end

 def create 
  
  @user = User.new(params[:user])
  if @user.save
   redirect_to users_path
  else
   render 'new'
  end
 end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

end