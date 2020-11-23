Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root "top#index"
 get 'about' => 'top#show_us'
 get 'contact' => 'top#show_contact'
 get 'contents' => 'top#show'
 get '0' => 'top#show_0'
 get '1' => 'top#show_1'
 get '2' => 'top#show_2'
 get '3' => 'top#show_3'
 
 scope ':chapter_number' do
   resources :questions do
       resources :replies, only: [:index]
   end
 end

end
