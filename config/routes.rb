Rails.application.routes.draw do

  namespace :crew do
    resources :apresentations
    resources :secretaries
    resources :muns
    resources :parties
    resources :stories
    resources :fortalezas
    resources :diretories
    resources :partners
    resources :solidaries
    resources :schools
    resources :blogs
    resources :category_event
    resources :big_sonu_comitees
    resources :big_sonu_schedules
    resources :offices
    resources :diretories
    resources :category_partners


    devise_for :admins,
    controllers:{
      sessions: "crew/admins/sessions",
      passwords: "crew/admins/passwords",
      confirmations: 'crew/admins/confirmations'
    },
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      unlock: 'unblock'
    }

    devise_scope :admins do
      authenticated  do
        resources :comitees do
          get 'unsubscribe_user/:user_id' => 'comitees#unsubscribe_user', as: :user_unsubscribe
          get 'unsubscribe_users' => 'comitees#unsubscribe_user_all', as: :users_unsubscribe_all
        end
        resources :users
         match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
        resources :admins
      end

      unauthenticated :user do
        
      end
      
      root 'admins#index', as: :authenticated_admin_root
    end
  end

  devise_for :users,
  controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations",
    confirmations: 'users/confirmations'
  },
    path: "/",
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    unlock: 'unblock',
    registration: 'cadastro',
    sign_up: 'new'
  }
  devise_scope :user do
    authenticated :user do
      #root to: 'user_dashboard#index',  as: :authenticated_user_root
      get 'comitee/cpf/cpf_find' => 'comitees#check_cpf', as: :show_comitee_cpf
      put 'comitee/:id/update' => 'comitees#update', as: :update_user_comitee
      get 'payment' => 'checkout#pagseguro'
      get 'users/change_cotist/:comitee_id' => 'users#change_cotist', as: :update_cotist_user
      get 'perfil' => 'site#perfil', as: :perfil_user

      get 'perfil/edit' => 'users/registrations#edit'
      put 'perfil' => 'users/registrations#update'


    end
    unauthenticated :user do
      #root to: "users/sessions#new", as: :unauthenticated_user_root
    end

    get 'comitee/:id' => 'comitees#show', as: :show_comitee
    post 'confirm_payment' => 'notifications#confirm_payment', as: :confirm_payment

  end



  #ROTAS DO SITE

  root 'site#index'
  get 'sonu-academico' => 'site#academic', as: :academic
  get 'sonu-beta' => 'site#beta', as: :beta
  get 'certificados' => 'site#certificates', as: :certificates
  get '/comites' => 'site#comitees'
  get '/comites/:id' => 'site#show_comitee', as: :big_sonu_comitees
  get '/contato' => 'site#contact', as: :contact
  get '/cronograma' => 'site#cronogram', as: :cronogram
  get '/a-diretoria' => 'site#diretory', as: :diretory
  get '/faq' => 'site#faq', as: :faq
  get '/fortaleza' => 'site#fortaleza', as: :fortaleza
  get '/inscricoes'=> 'site#inscription', as: :inscription
  get '/o-que-sao-muns' => 'site#muns', as: :muns
  get '/festas' => 'site#parties', as: :parties
  get '/parceiros' => 'site#partners', as: :partners
  get '/sonu-escolas' => 'site#schools', as: :schools
  get '/o-secretariado' => 'site#secretary', as: :secretary
  get '/carta-de-apresentacao' => 'site#apresentation', as: :apresentation
  get '/sonu-solidaria' => 'site#solidary', as: :solidary
  get 'minicursos-e-palestras' => 'site#speeches', as: :speeches
  get '/historia-da-sonu' => 'site#story', as: :story
  get '/noticias' => 'site#news'
  get '/imprensa'=>'site#press', as: :press
  get '/noticias/:id' => 'site#show', as: :news


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
