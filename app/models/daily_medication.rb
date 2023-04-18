# == Schema Information
#
# Table name: daily_medications
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  prescription_id :integer
#
# Indexes
#
#  index_daily_medications_on_prescription_id  (prescription_id)
#
# Foreign Keys
#
#  prescription_id  (prescription_id => prescriptions.id)
#
class DailyMedication < ApplicationRecord
  belongs_to :prescription
end
