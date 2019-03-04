class V1::TenantApplicationsController < ApplicationController
  def index
    @tenant_applications = TenantApplication.all
    render json: @tenant_applications, status: :ok
  end

  # def show
  #   @tenant_applicationn = TenantApplication.find_by(token: app_params[:token])
  #   puts app_params
  #   # render json: @tenant_applicationn, status: :ok
  # end

  def create
    @tenant_application = TenantApplication.new(app_params)
    @tenant_application.save
    render json: @tenant_application, status: :created
  end

  def update
    @tenant_application = TenantApplication.find_by(token: app_params[:token])
    @tenant_application.update(
      token: nil,
      email: app_params[:email],
      evictions: app_params[:evictions],
      first_name: app_params[:first_name],
      last_name: app_params[:last_name],
      landlord_email: app_params[:landlord_email],
      landlord_name: app_params[:landlord_name],
      landlord_phone: app_params[:landlord_phone],
      maiden_name: app_params[:maiden_name],
      phone: app_params[:phone],
      ssn: app_params[:ssn],
    )
    render json: @tenant_application, status: :ok
  end

  def destroy
    @tenant_application = TenantApplication.find_by(id: params[:id])
    if @tenant_application.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def app_params
    params.require(:tenant_application).permit(
      :token,
      :email,
      :id,
      :application_type,
      :evictions,
      :first_name,
      :last_name,
      :landlord_email,
      :landlord_name,
      :landlord_phone,
      :maiden_name,
      :phone,
      :ssn,
    )
  end
end
