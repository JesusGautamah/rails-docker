require 'devise'


devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'omni_auth',
    mailer: 'users/mailer'
  }

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get 'show', to: 'users/registrations#show'
  end