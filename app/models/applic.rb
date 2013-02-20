# == Schema Information
#
# Table name: applics
#
#  id         :integer          not null, primary key
#  message    :text
#  resume_id  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Applic < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  attr_accessible :message, :resume_id
end
