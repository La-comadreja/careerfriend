class Job < ActiveRecord::Base
  attr_accessible :company, :description, :level, :location, :name, :reward, :rewardtype, :skills
end
