ActiveAdmin.register Blog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title,:user_id, :subject, :question, :answer, :blogger, :blogger_image, :blogger_department, :description, :name,:tag_list, :tag, { tag_ids: [] }, :tag_ids,:about_blogger
  #
  # or
  form do |f|
    f.inputs "Blog" do
      f.input :title
      f.input :about_blogger
      f.input :description, as: :quill_editor,input_html: { data: { options: { modules: { toolbar: [
    [{ 'header': '1'}, {'header': '2'}, { 'font': [] }],
    [{size: []}],
    ['bold', 'italic', 'underline', 'strike', 'blockquote'],
    [{ align: '' }, { align: 'center' }, { align: 'right' }, { align: 'justify' }],
    [{'list': 'ordered'}, {'list': 'bullet'},
     {'indent': '-1'}, {'indent': '+1'}],
    ['link', 'image', 'video'],
    ['clean']
  ] }, placeholder: 'Type something...', theme: 'snow' } } }
      f.input :blogger_image
      f.input :blogger_department,:label => "Categories", :as => :select, :collection => ["Python-Development","Ruby-on-Rails-Development","ReactJs-Development","Reactsnative-Development","Angular-Development","Business-Development","IOS-Development","UI-Development","UX-Development"]
      f.input :user_id,:label => "Created_by",:as=>:select, collection: User.all.collect { |r| [r.full_name, r.id] }
      f.input :tag_ids,  :as=>:select, collection: Tag.all.collect { |r| [r.name, r.id] }, multiple: true, include_blank: true
    end
    f.actions
  end
  #
  # permit_params do
  #   permitted = [:title, :subject, :question, :answer, :blogger, :blogger_image, :blogger_department, :description, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
