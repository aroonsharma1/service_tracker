class ServiceRequestsController < ApplicationController
  
  #before_filter :signed_in_user, only:  [:show]
  #before_filter :correct_user,  only: [:show]
  
  def show
    @service_request = ServiceRequest.find(params[:id])
  end
  
  def new
    @service_request = ServiceRequest.new
  end
  
  def create
    @service_request = ServiceRequest.new(params[:service_request])

    if @service_request.save
      serv = compute_serv_num(@service_request)
      @service_request.update_attributes(service_request_number: serv)
      retrieve @service_request
      flash[:success] = "Created new service request with new number #{@service_request[:service_request_number]}!"      
      redirect_to @service_request
    else
      render 'new'
    end   
  end
  
  def index
    @service_requests = ServiceRequest.all
  end
  
  private
  
  # Before filters
  def signed_in_user
    redirect_to root_path, notice: "Please login using your service request #." unless retrieved? || current_administrator?
  end
  
  def correct_user
    @service_request = ServiceRequest.find(params[:id])
    redirect_to(root_path) unless current_service_request?(@service_request)
  end
    
end
