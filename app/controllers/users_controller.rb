require 'json'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show

    respond_to do |format|
      # if @user.nil?
      format.json { render :show }
      format.html { render :show }
      # else
      #   format.html { render :new }
      #   format.json { render json: @user.errors, status: :unprocessable_entity }
      # end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    random = ""
    begin
      random = SecureRandom.hex(5)
    end while User.where(:token => random).count > 0
    @user.token = random

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    json = JSON.parse request.body.read

    json["values_attributes"].each do |value|
      if(@user.values.where(:key => value["key"]).first.nil?)
        puts "NOT FOUND #{value["key"]}"
      else
        puts "FOUND #{value["key"]}"
        value["id"] = @user.values.where(:key => value["key"]).first.id
      end
    end

    @user.update(json)

    respond_to do |format|
    #   if @user.update(user_params)
    #     format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.where(:token => params[:id]).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:token, :controller_token)
    end
end
