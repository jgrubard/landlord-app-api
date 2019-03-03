class V1::TenantApplicationsController < ApplicationController
  def index
    @tenant_applications = TenantApplication.all
    render json: @tenant_applications, status: :ok
  end

  def create
    @tenant_application = TenantApplication.new(app_params)
    @tenant_application.save
    render json: @tenant_application, status: :created
  end

  def destroy
    @tenant_application = TenantApplication.where(id: params[:id]).first
    if @tenant_application.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def app_params
    params.require(:tenant_application).permit(:token)
  end
end
