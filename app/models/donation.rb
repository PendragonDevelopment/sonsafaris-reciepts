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

class Donation < ActiveRecord::Base
	belongs_to :user
  attr_accessible :amount, :details, :donation_date, :user_id
end
