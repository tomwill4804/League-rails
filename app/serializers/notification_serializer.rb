# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  date       :date
#  text       :string
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NotificationSerializer < ActiveModel::Serializer

  attributes :id, :date, :text

  belongs_to :team

end
