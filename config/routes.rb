Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root "top#index"
 get 'about' => 'top#show_us'
 get 'contact' => 'top#show_contact'
 get 'contents' => 'top#show'
 get 'contents/0' => 'top#show_0'
 get 'contents/0' => 'questions#new'
 post 'contents/0' => 'questions#create_0'
 get 'contents/1' => 'top#show_1'
 get 'contents/2' => 'top#show_2'
 get 'contents/3' => 'top#show_3'

end
