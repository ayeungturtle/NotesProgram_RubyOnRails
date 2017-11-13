Rails.application.routes.draw do
  get 'home/show'

  get 'notes/add'

  get 'notes/delete/:id' => 'notes#delete'

  get 'notes/reorder'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
