class Job < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company, :description, :level, :location, :name, :reward, :rewardtype, :skills
end
