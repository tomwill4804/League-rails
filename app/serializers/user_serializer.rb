# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :email, :phone, :access_token

  #has_many :positions
  has_many :teams
  #has_many :notifications
  #has_many :home_games
  #has_many :away_games

  #def home_games
  #    object.home_games.collect { |game| [game.date, game.location, game.away_team]}
  #end

  #def away_games
  #    object.away_games.collect { |game| [game.date, game.location, game.home_team]}
  #end

  #def notifications
  #    object.notifications.collect { |notification| [notification.date, notification.text]}
  #end

  #def teams
  #    object.teams.collect { |team| [team.name]}
  #end

end
