# == Schema Information
#
# Table name: nurses
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Nurse < ApplicationRecord
end
