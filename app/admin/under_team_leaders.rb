ActiveAdmin.register UnderTeamLeader do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :department, :employee_id
  #
  # or
  form do |f|
    f.inputs "UnderTeamLeader" do
      f.input :user_id, :label => "Select-TL",:as => :select, :collection => User.all.collect { |r| [r.username, r.id] }, include_blank: false, include_hidden: false
      f.input :department, :as => :select, :collection => ["Python","Ruby-on-Rails","ReactJs","Reactsnative","Angular","Business-Development","Ios","UI","UX"]
      f.input :employee_id, :label => "Select-Employee",:as=>:select, collection: User.all.collect { |r| [r.username, r.id] }, include_blank: false, include_hidden: false
    end
    f.actions
  end
  #
  # permit_params do
  #   permitted = [:user_id, :department, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
