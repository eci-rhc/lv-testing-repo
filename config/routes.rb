Rails.application.routes.draw do

    devise_for :tblusers, controllers: { sessions: 'sessions', registrations: 'registrations', confirmations: "confirmations", passwords: 'passwords'} do
        get "confirmation", to: "confirmations#show"
    end
    
    devise_scope :tbluser do
        patch "/confirm_tbluser", to: "confirmations#confirm_tbluser"
        get '/after_sending_reset_password_sent' => 'passwords#after_sending_reset_password_sent', via: :get
    end

    match '/products/:project/communities/:community/:parcel/:floor/:menu/:menuoption' => 'tbldata#index', :via => [:get, :post]
    match '/multi_family_floor_mappings/display_building_floors' => 'multi_family_floor_mappings#display_building_floors', :via => :get
    match '/multi_family_floor_mappings/save_all_floors' => 'multi_family_floor_mappings#save_all_floors', :via => :post
    match '/multi_family_floor_mappings/delete_building_floor' => 'multi_family_floor_mappings#delete_building_floor', :via => :post
    match '/multi_family_floor_mappings/save_builder_floor' => 'multi_family_floor_mappings#save_builder_floor', :via => :post
    match '/sadmin' => 'project_initial_data#index', :via => :get
    get '/checkpasswd' => 'application#checkpasswd', :via => :get
    get '/forgotpasswd' => 'home#forgotpasswd', :via => :get
    match '/manage_color_schemes/edit_charac_name' => 'manage_color_schemes#edit_charac_name', :via => :get
    match '/manage_color_schemes/delete_charac' => 'manage_color_schemes#delete_charac', :via => :post
    match '/manage_color_schemes/option_code_change' => 'manage_color_schemes#option_code_change', :via => :get
end
