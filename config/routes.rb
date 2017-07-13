Rails.application.routes.draw do
  
  namespace :crew do
    devise_for :admins,
    controllers:{
      sessions: "crew/admins/sessions",
      passwords: "crew/admins/passwords",
      confirmations: 'crew/admins/confirmations'
    },
      path: '/',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      unlock: 'unblock'
    }

    devise_scope :admins do
    authenticated  do

    resources :admins  
    root 'admins#index', as: :authenticated_admin_root
    end
  end
end

  #ROTAS DO SITE
  root 'site#index'
  get 'site/academic'
  get 'site/beta'
  get 'site/certificates'
  get 'site/comitees'
  get 'site/contact'
  get 'site/cronogram'
  get 'site/diretory'
  get 'site/faq'
  get 'site/fortaleza'
  get 'site/inscription'
  get 'site/muns'
  get 'site/parties'
  get 'site/partners'
  get 'site/perfil'
  get 'site/schools'
  get 'site/secretary'
  get 'site/apresentation'
  get 'site/solidary'
  get 'site/speeches'
  get 'site/story'
  get 'site/news'
  get 'site/press'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
