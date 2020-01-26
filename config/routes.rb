Rails.application.routes.draw do
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      get 'todolists/new'
      get 'top' => 'homes#top'
      post 'todolists' => 'todolists#create'
	  get 'todolists' => 'todolists#index'
	  # 投稿データのidを判別する
	  get 'todolists/:id' => 'todolists#show', as: 'todolist'
end