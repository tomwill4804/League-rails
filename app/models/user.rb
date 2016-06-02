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

class User < ActiveRecord::Base

  has_secure_password

  has_many :positions
  has_many :teams, through: :positions
  has_many :notifications, through: :teams
  has_many :home_games, through: :teams
  has_many :away_games, through: :teams

end
