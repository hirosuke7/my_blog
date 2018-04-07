class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_customer, only: [ :show, :edit, :update, :destroy]

  def index
    user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if  @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if  @user.update(customer_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
    # @comments = Comment.where(customer_id: params[:id].to_i)
    # 下記を追加
    @users = @userr.posts
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def set_customer
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email,
      :post_id)
    end
    
  end
