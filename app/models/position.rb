# == Schema Information
#
# Table name: positions
#
#  id          :integer          not null, primary key
#  ptype       :string
#  officer     :string
#  spikes      :integer          default(0)
#  assists     :integer          default(0)
#  gamesPlayed :integer          default(0)
#  team_id     :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Position < ActiveRecord::Base

  belongs_to :team
  belongs_to :user
  
end
