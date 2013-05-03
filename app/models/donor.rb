class Donor < ActiveRecord::Base
	has_many :donations
  attr_accessible :city, :first_name, :last_name, :state, :street_address, :zip_code, :email, :phone_number

  def name
  	"#{first_name} #{last_name}"
  end
end
