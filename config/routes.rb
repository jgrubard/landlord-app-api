Rails.application.routes.draw do
  namespace :v1 do
    resources :tenant_applications
  end
  put '/v1/tenant_applications/:token' => 'v1/tenant_applications#update'
  # get '/v1/tenant_applications/:token' => 'v1/tenant_applications#show'

end
