Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/date/:date', to: 'date#show'
  
end
