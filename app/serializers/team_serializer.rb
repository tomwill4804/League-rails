# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  won        :integer          default(0)
#  lost       :integer          default(0)
#  rank       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamSerializer < ActiveModel::Serializer

  attributes :id, :name, :won, :lost, :rank

  has_many :positions
  has_many :notifications
  has_many :home_games
  has_many :away_games

end
