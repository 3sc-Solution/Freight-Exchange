class LoadsController < ApplicationController
  respond_to :html, :json, :js
  before_filter :authenticate_user!
  def index
    if (params[:load_from].present? or params[:load_from].present? or params[:load_material].present?)
      # @loads = Load.where(:load_truck_type=> params[:selectbox1_selectedvalue])
      @loads = Load.search(params)
    else
      @loads = Load.all
    end
  end
	def new
  	@load =Load.new
  end
  def create
    user = current_user if user_signed_in?
    @load =user.loads.build(load_params)
  	 if @load.save
      ###  call deliver method after save send email ###
      respond_to do |format|
       format.html { redirect_to root_path, success: 'Load was successfully created.' }
     end
      else
        render "loads/new"
      end
  end

  def distance_calculation
    if  params[:distance_from].present? and params[:distance_to].present?
      @response = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params[:distance_from]}&destinations=#{params[:distance_to]}+BC&key=AIzaSyAlvMtnmGT7_fFtVgvKtDMG5tYuIX2Rdig", :verify => false)
      @source_lat_long = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{params[:distance_from]}&key=AIzaSyAlvMtnmGT7_fFtVgvKtDMG5tYuIX2Rdig", :verify => false)
      @destination_lat_long = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{params[:distance_to]}&key=AIzaSyAlvMtnmGT7_fFtVgvKtDMG5tYuIX2Rdig", :verify => false)
      @source_lat_long = @source_lat_long["results"][0]["geometry"]["location"]
      @destination_lat_long = @destination_lat_long["results"][0]["geometry"]["location"]
        respond_to do |format|  ## Add this
          format.js
          format.html
        end  
    end
  end

  def send_booked_mail
    if params[:id].present?
     @load = Load.find(params[:id])
     @load.update_attributes(:booked =>true) if @load.present?
     Ordermailer.booking_email(@load.user).deliver! if @load.user.present?
     respond_to do |format|
       format.html { redirect_to :back, success: 'Load successfully booked...' }
     end
    end
  end
  def root_direction
  end

  def user_profile
    @user = User.find_by_id(params[:user_id])
  end
   private
    def load_params
      params.require(:load).permit(:load_from, :load_to, :load_material, :load_weight, :load_truck_type, :load_no_of_truck, :load_schedule_date, :load_type, :source_pin_code,:destination_pin_code, :load_enabled, :user_id, :booked, :sharing, :expected_price)
    end
end