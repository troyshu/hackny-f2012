# == Schema Information
#
# Table name: libs
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lib < ActiveRecord::Base
  attr_accessible :text
end
