Rails.application.routes.draw do
  get 'sitemap/index'
  root 'home#index'
  get 'home/mailer'
  get 'sitemap/sitemap'
  get 'leave_requests/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  class ActiveAdmin::Devise::SessionsController 

   def after_sign_in_path_for(resource)
    case resource
     when AdminUser then '/admin'
      else super
    end
   end

   def after_sign_out_path_for(resource)
    '/admin'
   end
  end

  resources :leave_requests
  resources :blogs do 
    collection do
      get 'phpdev'
      get 'nodejs'
    end
  end
  resources :support_emails
  resources :meta_contents
  resources :portfolios do
    collection do
      get :ios_portfolio
      get :mob_portfolio
    end
  end
  resources :carrers     
  devise_for :users, :controllers => { :registrations => :registrations }
  devise_scope :user do
    get "/guide" => "devise/sessions#new"
  end
  get '/dashboard',     to: 'admins#index'
  get '/leave',     to: 'admins#leave'
  get '/guideline',     to: 'admins#show'
  get '/about',         to: 'home#about'
  get '/ourteam',       to: 'home#ourteam'
  # get '/careers',       to: 'home#careers'
  get '/contact',       to: 'home#contact'
  get '/portfolio',     to: 'home#portfolio'
  get '/iot_portfolio', to: 'home#iot_portfolio'
  get '/mob_portfolio', to: 'home#mob_portfolio'
  get '/contact_mail',  to: 'home#contact_mail'
  get 'blogs',          to: 'blog#index'
  get 'blogs/new',     to: 'blog#new'
  get 'ashutosh_blog',  to: 'blog#ashutosh_blog'
  get 'deepak_blog',    to: 'blog#deepak_blog'
  get 'kratika_blog',   to: 'blog#kratika_blog'
  get 'ashwin_blog',    to: 'blog#ashwin_blog'
  get '/blog_list',     to: 'blogs#blog_list'
  get '/thankyou',      to: 'home#thankyou'
  get '/android',      to: 'home#android'
  get '/nodejs',      to: 'home#nodejs'
  get '/python',      to: 'home#python'
  get '/ror',      to: 'home#ror'
  get '/reactdev',      to: 'home#reactdev'
  get '/angular',      to: 'home#angular'
  get '/phpdev',      to: 'home#phpdev'
  get '/mernstack',      to: 'home#mernstack'
  get '/meanstack',      to: 'home#meanstack'
  get '/ios',      to: 'home#ios'
  
  get '/reactJS', to: 'home#reactdev'
  get '/android/nodejs',to: 'home#nodejs'
  get '/android/reactJS',to: 'home#reactdev'
  get '/android.html/reactJS',to: 'home#reactdev'

  get '/mernstack/phpdev',to: 'home#phpdev'
  get '/mernstack/nodejs',to: 'home#nodejs'
  get '/mernstack/reactJS',to: 'home#reactdev'
  get '/mernstack.html/reactJS',to: 'home#reactdev'

  get '/contact/phpdev',to: 'home#phpdev'
  get '/contact/nodejs',to: 'home#nodejs'
  get '/contact/reactJS',to: 'home#reactdev'

  get '/ios/phpdev',to: 'home#phpdev'
  get '/ios/nodejs',to: 'home#nodejs'
  get '/ios/reactJS',to: 'home#reactdev'
  get '/ios.html/reactJS',to: 'home#reactdev'

  get '/nodejs/nodejs',to: 'home#nodejs'
  get '/nodejs/phpdev',to: 'home#phpdev'
  get '/nodejs.html/reactJS',to: 'home#reactdev'
  get '/nodejs/reactJS',to: 'home#reactdev'

  get '/python/nodejs',to: 'home#nodejs'
  get '/python/reactJS',to: 'home#reactdev'
  get 'python.html/reactJS',to: 'home#reactdev'
  get 'python/phpdev',to: 'home#phpdev'

  get '/about/reactJS',to: 'home#reactdev'
 
  get 'android/reactJS',to: 'home#reactdev'
  get 'android.html/reactJS',to: 'home#reactdev'
  get 'android/phpdev',to: 'home#phpdev'
  get 'android/nodejs',to: 'home#nodejs'

  get '/angular/reactJS',to: 'home#reactdev'
  get '/angular/phpdev', to: 'home#phpdev'
  get '/angular.html/reactJS',to: 'home#reactdev'
  get '/angular/nodejs',to: 'home#nodejs'

  get '/meanstack/reactJS',to: 'home#reactdev'

  get '/ourteam/reactJS',to: 'home#reactdev'

  get '/phpdev/reactJS',to: 'home#reactdev'
  get '/phpdev/nodejs',to: 'home#nodejs'
  get '/phpdev/phpdev',to: 'home#phpdev'
  get '/phpdev.html/reactJS',to: 'home#reactdev'

  get '/reactdev/reactJS',to: 'home#reactdev'
  get '/reactdev/nodejs',to: 'home#nodejs'
  get '/reactdev/phpdev',to: 'home#phpdev'

  get '/reactnative/reactJS',to: 'home#reactdev'
  get '/reactnative/nodejs',to: 'home#nodejs'
  get '/reactnative/phpdev',to: 'home#phpdev'
    

  get '/ror/reactJS',to: 'home#reactdev'
  get '/portfolio/reactJS',to: 'home#reactdev'
  get '/reactnative',      to: 'home#reactnative'
  get '/sitemap' => 'sitemap#index',defaults: {format: "xml"}
  resources :account_details  
end
