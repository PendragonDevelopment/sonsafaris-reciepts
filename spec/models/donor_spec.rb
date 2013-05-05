# == Schema Information
#
# Table name: donors
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  street_address :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  email          :string(255)
#  phone_number   :string(255)
#  user_id        :integer
#

require 'spec_helper'

describe Donor do
  pending "add some examples to (or delete) #{__FILE__}"
end
