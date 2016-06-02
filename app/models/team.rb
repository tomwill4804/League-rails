# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  won        :integer
#  lost       :integer
#  rank       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base

  has_many :positions
  has_many :notifications
  has_many :home_games, :class_name => "Game", foreign_key: 'home_team_id'
  has_many :away_games, :class_name => "Game", foreign_key: 'away_team_id'

end
