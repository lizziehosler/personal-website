Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "index"
  get 'download', to: "pages#download"
end
