# == Schema Information
#
# Table name: libposts
#
#  id                   :integer          not null, primary key
#  text                 :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  text_framework_array :string(255)
#  keywords_array       :string(255)
#

require 'test_helper'

class LibpostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
