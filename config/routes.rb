Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/show'
  get 'cocktails/edit'
  get 'cocktails/update'
  get 'cocktails/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
