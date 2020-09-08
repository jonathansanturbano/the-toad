ActiveAdmin.register Illustrator do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description, :name, :photo

  index do
    column :name
    column :description
    actions
  end

  form do |f|
    f.inputs "Name, description and photo" do
      f.input :name
      f.input :description
      f.input :photo, as: :file
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
