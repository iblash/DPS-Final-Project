# == Schema Information
#
# Table name: prescriptions
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_prescriptions_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Prescription < ApplicationRecord
  belongs_to :user
  has_many :daily_medications
end
