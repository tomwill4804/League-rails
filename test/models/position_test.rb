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

require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
