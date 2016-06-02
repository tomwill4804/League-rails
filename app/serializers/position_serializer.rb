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

class PositionSerializer < ActiveModel::Serializer

  attributes :id, :ptype, :officer, :spikes, :assists

  belongs_to :user
  belongs_to :team

end
