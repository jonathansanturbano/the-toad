ActiveAdmin.register Goodie do
  permit_params :title, :quantity, :price, photos: []

  index do
    selectable_column
    column :title
    column :quantity
    column :price
    column :created_at
    column :updated_at
    actions
  end

  filter :title
  filter :quantity

  form do |f|
    f.inputs "Goodie" do
      f.input :title
      f.input :quantity
      f.input :price
    end
    f.inputs "Photos" do
      f.input :photos, as: :file, input_html: { multiple: true }
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
end
