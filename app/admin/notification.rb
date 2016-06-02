ActiveAdmin.register Notification do

  permit_params :id, :date, :text, :team_id

  index do
    selectable_column
    column :team_id
    column :date
    column :text
    actions
  end


end
