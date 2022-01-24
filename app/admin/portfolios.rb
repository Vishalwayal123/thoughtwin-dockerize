ActiveAdmin.register Portfolio do |f|
  

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :description, :image, :side_image, :language, :web_link, :web_type, :admin_id, :user_id
  #
  # or
  #

  form do |f|
    f.inputs "Portfolio" do
      f.input :title, :presence => {:message => 'hello world, bad operation!'}
      f.input :description
      f.input :image
      f.input :side_image
      f.input :language
      f.input :web_link
      f.input :web_type, :collection => ['Ios portfolio', 'Web Portfolio', 'Mobile Portfolio']
      f.submit
    end
  end
 

  # permit_params do
  #   permitted = [:title, :description, :image, :side_image, :language, :web_link, :web_type, :admin_id, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
