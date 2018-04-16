class TrucksController < ApplicationController
  require 'will_paginate/array'
  respond_to :html, :json, :js
  before_filter :authenticate_user!, only: [:index]
  # before_action :check_subscription

  # def check_subscription
  #   if current_user.present?
  #     max_hours = 24 * 1
  #     time = Time.now - current_user.subscription_date if current_user.subscription_date.present?
  #     hours = (time / 1.hour).round
  #     if hours > max_hours
  #       # sign_out(current_user)
  #       respond_to do |format|
  #          format.html { redirect_to subscriptions_path, success: 'Please make subscription' }
  #         end
  #     end
  #   end
  # end
  def index
    if current_user.present? and current_user.role.name=="Load Provider"
      if (params[:truck_from].present? or params[:truck_to].present? or params[:vehicle_number].present? or params[:schedule_date].present?)
        @trucks = params[:schedule_date].present? ? Truck.where("schedule_date = ?",params[:schedule_date]).search(params) : Truck.search(params)
      else
        @trucks = Truck.all
      end
      @trucks = @trucks.paginate(page: params[:page], per_page: 10)
    else
      respond_to do |format|
       format.html { redirect_to root_path }
      end
    end
  end

	def new
    if current_user.present? and current_user.role.name=="Truck Owner"
      @truck =Truck.new
    else
      respond_to do |format|
        format.html { redirect_to root_path, success: 'You are not authorised for this service!' }
      end
    end
  end
  def create
    if current_user.present? and current_user.role.name=="Truck Owner"
      user = current_user if user_signed_in?
      @truck = user.trucks.build(truck_params)
    	 if @truck.save
        driver = @truck.drivers.build(:name=> params[:truck][:driver_name],:transporter_name => params[:truck][:current_transporter_name],:truck_id => @truck.id,:lic_number => params[:truck][:licence_number])
        driver.save if driver.present?
        CreateTruck.truck_user(@truck).deliver
        ###  call deliver method for send email ###
        respond_to do |format|
         format.html { redirect_to trucks_path, success: 'Truck was successfully created.' }
        end
      else
        render "trucks/new"
      end
    # else
    #   respond_to do |format|
    #     format.html { redirect_to root_path, success: 'You are not authorised for this service!' }
    #   end
    end
  end
  def send_truck_booked_mail
    if params[:id].present?
     @truck = Truck.find_by_id(params[:id])
     @truck.update_attributes(:truck_booked =>true) if @truck.present?
     TruckBook.truck_booking_email(@truck.user).deliver if @truck.user.present?
     respond_to do |format|
       format.html { redirect_to :back, success: 'Truck successfully booked' }
     end
    end
  end

  def truck_user_profile
    user = User.find_by_id(params[:user_id])
    @trucks = user.trucks if user.present?
  end

  def make_confirmation_truck
  end
  
  private
    def truck_params
			params.require(:truck).permit(:vehicle_number, :driver_name, :driver_mobile_no, :truck_weight, :truck_type, :schedule_date, :truck_from, :truck_to, :user_id, :truck_booked, :expected_price, :transit_time, :documentation,:sharing, :frequency, :truck_body, :information,:licence_number, :current_transporter_name)
    end
end