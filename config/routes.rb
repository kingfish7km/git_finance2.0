Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root "top#index"
 get 'about' => 'top#show_us'
 get 'contact' => 'top#show_contact'
 get 'contents' => 'top#show'
 
 scope ':chapter_number' do
   resources :questions do
       resources :replies, only: [:index]
   end
 end

end
