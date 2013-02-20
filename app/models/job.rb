# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  level       :integer
#  reward      :decimal(, )
#  rewardtype  :binary
#  company     :string(255)
#  description :text
#  skills      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :description, :level, :location, :name, :reward, :rewardtype, :skills
end
