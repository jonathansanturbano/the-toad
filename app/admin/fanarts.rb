ActiveAdmin.register Fanart do
  permit_params :author, :photo

  index do
    selectable_column
    column :author
    column :created_at
    actions
  end

  filter :author
  filter :created_at

  form do |f|
    f.inputs "Fan Art" do
      f.input :author
      f.input :photo, as: :file
    end
    f.actions
  end

end
