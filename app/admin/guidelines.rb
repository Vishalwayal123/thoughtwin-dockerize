ActiveAdmin.register Guideline do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description
  form do |f|
    f.inputs 'Guideline' do
      f.input :description, as: :quill_editor,input_html: { data: { options: { modules: { toolbar: [
    [{ size: [ ], },], 
    ['bold', 'italic', 'underline', 'strike', 'blockquote'],
    [{ align: '' }, { align: 'center' }, { align: 'right' }, { align: 'justify' }],
    [{'list': 'ordered'}, {'list': 'bullet'},
     {'indent': '-1'}, {'indent': '+1'}],
    ['link', 'image', 'video'],
    ['clean']
  ] }, placeholder: 'Type something...', theme: 'snow' } } }
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
