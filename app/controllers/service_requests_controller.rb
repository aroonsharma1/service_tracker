class ServiceRequestsController < ApplicationController
  
  before_filter :signed_in_user, only:  [:show]
  before_filter :correct_user,  only: [:show]
  
  def show
    @service_request = ServiceRequest.find(params[:id])
  end
  

  def update
    @service_request = ServiceRequest.find(params[:id])
    @service_request.update_attributes(service_request_params) #note the use of strong parameters here (required gem)
      flash[:success] = "Service Request Updated"
      redirect_to @service_request
  end
  
  def edit
    @service_request = ServiceRequest.find(params[:id])
    #eventaully implement changing status of service request here
  end
  
  def new
    @service_request = ServiceRequest.new
  end
  
  def create
    @service_request = ServiceRequest.new(params[:service_request])

    if @service_request.save
      serv = compute_serv_num(@service_request)
      @service_request.update_attributes(service_request_number: serv, status: 1) #status for a new service request should be 1 by default. It can be changed from edit action
      #retrieve @service_request  (admins dont need to be doubly signed in when creating a request)
      initialize_request_form(@service_request)
      flash[:success] = "Created new service request with new number #{@service_request[:service_request_number]}!"      
      redirect_to @service_request
    else
      render 'new'
    end   
  end
  
  def index
    @service_requests = ServiceRequest.paginate(page: params[:page])
  end
  
  def destroy
    ServiceRequest.find(params[:id]).destroy
    flash[:success] = "Service Request deleted!"
    redirect_to service_requests_url
  end
  
  private
  
  # Before filters
  def signed_in_user
    redirect_to root_path, notice: "Please login using your service request #." unless retrieved? || adminsigned_in?
  end
  
  def correct_user
    @service_request = ServiceRequest.find(params[:id])
    redirect_to(root_path) unless current_service_request?(@service_request) || adminsigned_in? 
  end
  
  def service_request_params 
      params.require(:service_request).permit(:description, :status, :service_request_number, :customer_first_name, 
                  :customer_last_name, :customer_email, 
                  :request_fields_attributes => [:id, :notes, :name, :done, :date, :time]) 
  end
    
end
