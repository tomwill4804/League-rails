ActiveAdmin.register User do

  permit_params :id, :name, :email, :phone

end
