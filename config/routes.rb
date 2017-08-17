Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end

  # get 'doses/index'

  # get 'doses/show'

  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/edit'

  # get 'doses/update'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  # get 'cocktails/edit'

  # get 'cocktails/update'

  # get 'cocktails/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
