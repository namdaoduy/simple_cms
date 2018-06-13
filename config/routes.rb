Rails.application.routes.draw do
  # Root Route: root 'controller#action' --> tell where the root domain go
  root 'demo#index'

  # Simple Route
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/google'
  get 'pacman/pacman'
  # Default Route: not recommend
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
