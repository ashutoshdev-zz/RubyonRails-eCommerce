class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def new
    @user=User.new
  end

  def edit
    @user=User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(:firstname=>params[:user][:firstname],:lastname=>params[:user][:lastname],:location=>params[:user][:location],:number=>params[:user][:number],:email=>params[:user][:email] )
    redirect_to(users_path)
  end


  def create
    logger.debug params[:user][:firstname]

    #@user = User.new
    #@user.firstname = params[:user][:firstname]
    #@user.lastname = params[:user][:lastname]
    #@user.loaction = params[:user][:loaction]
    #@user.number = params[:user][:number]
    #@user.email = params[:user][:email]
    #@user.save
    #redirect_to('/users/' + @user.id)
    User.create(:firstname=>params[:user][:firstname],:lastname=>params[:user][:lastname],:location=>params[:user][:location],:number=>params[:user][:number],:email=>params[:user][:email] )
    redirect_to(users_path)
  end


  def destroy
    User.find(params[:id]).destroy
    redirect_to(users_path)
  end

end
