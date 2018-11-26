Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/help", to: "static_pages#help", as: :help
    get "/contact", to: "static_pages#contact", as: :contact
  end
end
