Rails.application.routes.draw do
  namespace :v1 do
    resources :tenant_applications
  end
end
