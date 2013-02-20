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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
