ActiveAdmin.register User do

  permit_params :id, :name, :email, :phone

  index do
    selectable_column
    column :name
    column :email
    column :phone
    actions
  end

  #
  #  show
  #
  show do |user|
    attributes_table do
      row :name
      row :email
      row :phone
    end
  end

  #
  #  edit form
  #
  form do |f|
    if params[:id]
      name = User.find(params[:id]).name
    else
      name = ""
    end
    f.semantic_errors *f.object.errors.keys
    inputs '' do
      input :name
      input :password
      input :email
      input :phone
    end
    actions
  end

end
