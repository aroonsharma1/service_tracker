class ServiceRequestsController < ApplicationController
  
  def show
    @service_request = ServiceRequest.find(params[:id])
  end
  
  def new
    @service_request = ServiceRequest.new
  end
  
  def create
    @service_request = ServiceRequest.new(params[:service_request])
    if @service_request.save
      flash[:success] = "Created new service request!"
      redirect_to @service_request
    else
      render 'new'
    end
  end

  
end
