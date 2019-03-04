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
      email: app_params[:email]
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
    params.require(:tenant_application).permit(:token, :email, :id)
  end
end
