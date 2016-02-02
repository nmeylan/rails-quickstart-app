Rails.application.routes.draw do
  devise_for :users, controllers: [:sessions, :passwords, :confirmations, :registrations, :passwords].inject({}) { |memo, controller_name|
    memo[controller_name] = "public/#{controller_name}"
    memo
  }

  scope module: :public do
    root "home#index"
  end

  scope module: :front do
    get "dashboard", to: "dashboard#index"
  end


 root "public/home#index"
end
