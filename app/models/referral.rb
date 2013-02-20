# == Schema Information
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  linkedin   :string(255)
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Referral < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  attr_accessible :email, :linkedin, :message, :name, :phone
end
