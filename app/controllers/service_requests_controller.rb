class ServiceRequestsController < ApplicationController
  
  before_filter :signed_in_user, only:  [:show]
  before_filter :correct_user,  only: [:show]
  
  def show
    @service_request = ServiceRequest.find(params[:id])
  end
  
  def new
    @service_request = ServiceRequest.new
  end
  
  def create
    @service_request = ServiceRequest.new(params[:service_request])

    if @service_request.save
      #Generate service request number from time and id in database
      id = @service_request.id
      time = Time.now # create a time object
      hour = time.hour
      hourS = hour.to_s  #string variable representation of hour
      if hour < 10
        hourS = "0"  + hour.to_s
      end
    
      min = time.min
      minS = min.to_s
      if min < 10
        minS = "0" + min.to_s
      end
      # creates string of form id#|hour|min, then converts this to an integer
      serv = (id.to_s + hourS + minS).to_i
      @service_request.update_attributes(service_request_number: serv)
      retrieve @service_request
      flash[:success] = "Created new service request with new number #{@service_request[:service_request_number]}!"      
      redirect_to @service_request
    else
      render 'new'
    end
        
  end
  
  private
  
  # Before filters
  def signed_in_user
    redirect_to root_path, notice: "Please login using your service request #." unless retrieved?
  end
  
  def correct_user
    @service_request = ServiceRequest.find(params[:id])
    redirect_to(root_path) unless current_service_request?(@service_request)
  end
    
end
