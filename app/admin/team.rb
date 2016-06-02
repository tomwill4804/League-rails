ActiveAdmin.register Team do

  permit_params :id, :name, :won, :lost, :rank

  index do
    selectable_column
    column :name
    column :won
    column :lost
    column :rank 
    actions
  end

end
