ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params  :username, :email, :password,:doj,:department,:role,:is_portfolio, :is_carrer, :is_metatags
  controller do
   def update
       model = :user
      if params[model][:password].blank?
        %w(password).each { |p| params[model].delete(p) }
      end
      super
   end
 end
  #
  # or
  form do |f|
    f.inputs "User" do
      f.input :username
      f.input :email, :presence => {:message => 'bad operation!'}
      f.input :password
      f.input :doj,:label => "Date_of_join"
      f.input :department, :as => :select, :collection => ["Python","Ruby-on-Rails","ReactJs","Reactsnative","Angular","Business-Development","IOS","UI","UX"]
      #f.input :team_leader, :as=>:select, collection: User.where(is_team_leader: true) 
      #f.input :is_team_leader
      f.input :role, :as => :select, :collection => ["Super-TL","Team-Leader","Junior"]
      f.input :is_portfolio
      f.input :is_carrer
      f.input :is_metatags
    end
    f.actions
  end

  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
