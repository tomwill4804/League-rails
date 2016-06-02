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

class GameSerializer < ActiveModel::Serializer

  attributes :id, :date, :location

  belongs_to :home_team
  belongs_to :away_team

end
