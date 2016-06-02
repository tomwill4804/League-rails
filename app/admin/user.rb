ActiveAdmin.register User do

  permit_params :id, :name, :email, :phone

  index do
    selectable_column
    column :name
    column :email
    column :phone 
    actions
  end

end
