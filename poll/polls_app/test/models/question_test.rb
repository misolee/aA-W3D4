# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  q_text     :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer          not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
