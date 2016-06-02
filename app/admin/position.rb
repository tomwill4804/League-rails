ActiveAdmin.register Position do

  permit_params :id, :ptype, :officer, :spikes, :assists, :gamesPlayed,
     :team_id, :user_id

     #
  #  index
  #
  index do
    selectable_column
    column :team_id
    column :user_id
    column :ptype
    column :officer
    column :spikes
    column :assists
    column :gamesPlayed
    actions
  end

end
