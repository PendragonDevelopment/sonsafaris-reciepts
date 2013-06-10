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

class Donor < ActiveRecord::Base
	belongs_to :user
	has_many :donations
	attr_accessible :city, :first_name, :last_name, :state, :street_address, :zip_code, :email, :phone_number, :user_id

	def name
		"#{last_name}, #{first_name}"
	end
end
