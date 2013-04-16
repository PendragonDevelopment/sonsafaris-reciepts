# == Schema Information
#
# Table name: donations
#
#  id            :integer          not null, primary key
#  donation_date :date
#  amount        :integer
#  details       :string(255)
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Donation do
  pending "add some examples to (or delete) #{__FILE__}"
end
