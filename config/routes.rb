Rails.application.routes.draw do
  	get 'test/index'
  	get 'test/show'
	get 'test/solution', action: :show, controller: 'test'
end

