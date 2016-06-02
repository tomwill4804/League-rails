ActiveAdmin.register Game do

   permit_params :id, :date, :location, :home_team_id, :away_team_id

end
