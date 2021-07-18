ActiveAdmin.register Book do
  permit_params :title, :description, :size, :color, :age, :material, :pages, :year, :price, :signature_fee, photos: []

  index do
    selectable_column
    column :title
    column :description
    column :size
    column :color
    column :age
    column :material
    column :pages
    column :year
    column :price
    column :signature_fee
    actions
  end

  filter :title

  form do |f|
    f.inputs "Book Details" do
      f.input :title
      f.input :description
      f.input :size
      f.input :color, as: :string
      f.input :age
      f.input :material
      f.input :year
      f.input :price
      f.input :pages
      f.input :signature_fee
    end
    f.inputs "Photos" do
      f.input :photos, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

end
