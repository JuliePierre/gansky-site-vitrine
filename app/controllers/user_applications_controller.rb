class UserApplicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :show]

  def new
    @flat = Flat.friendly.find(params[:flat_id])
    @user_application = UserApplication.new
  end

  def create
    @user_application = UserApplication.new(user_application_params)
    @flat = Flat.friendly.find(params[:flat_id])
    if params[:user_application]["warrant"][1].nil? || params[:user_application]["visit_needed"][1].nil?
      render :new
    else
      @user_application.warrant = ( params[:user_application]["warrant"][1] == "true" )
      @user_application.visit_needed = ( params[:user_application]["visit_needed"][1] == "true" )
      @user_application.flat = @flat
      if @user_application.save
        UserMailer.confirmation(@user_application).deliver_now
        UserApplicationMailer.new_application(@user_application, @flat).deliver_now
        redirect_to  flat_user_application_path(@flat, @user_application)
      else
        render :new
      end
    end
  end

  def show

  end

  private

  def user_application_params
    params.require(:user_application).permit(:applicant_name, :applicant_email, :applicant_phone_number, :applicant_infos, :warrant, :visit_needed)
  end
end
