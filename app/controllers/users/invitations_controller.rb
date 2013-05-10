class Users::InvitationsController < Devise::InvitationsController
  def update
  	@user = User.find_by_invitation_token(params[:user][:invitation_token])
  	@donor = Donor.find_by_email(@user.email)
  	if @donor
		@donor.user_id = @user.id
		@donor.save
		@user.add_role :donor
		super
	else
		super
	end
  end
end