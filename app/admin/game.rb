ActiveAdmin.register Game do

   permit_params :id, :date, :location, :home_team_id, :away_team_id

   index do
     selectable_column
     column :home_team_id
     column :away_team_id
     column :date
     column :location
     actions
   end

end
