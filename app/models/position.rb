# == Schema Information
#
# Table name: positions
#
#  id          :integer          not null, primary key
#  type        :string
#  officer     :string
#  spikes      :integer
#  assists     :integer
#  gamesPlayed :integer
#  team_id     :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Position < ActiveRecord::Base

  belongs_to :team
  belongs_to :user
  
end
