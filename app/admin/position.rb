ActiveAdmin.register Position do

  permit_params :id, :type, :officer, :spikes, :assists, :games_played,
     :team_id, :user_id

end
