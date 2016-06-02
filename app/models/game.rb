# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  date         :date
#  location     :string
#  home_team_id :integer
#  away_team_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Game < ActiveRecord::Base

  belongs_to :home_team, :class_name => "Team", foreign_key: 'home_team_id'
  belongs_to :away_team, :class_name => "Team", foreign_key: 'away_team_id'

end
