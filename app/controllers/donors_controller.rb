class DonorsController < ApplicationController
	before_filter :authenticate_user!

  def new
  	@user = current_user
  	@donor = Donor.new
  end

  def create
  	@user = current_user
  	@donor = Donor.new(params[:donor])
  	if @donor.save
  		redirect_to @donor, :notice => "Donor added!"
  	else
  		render :new
  	end
  end

  def search
    @q = Donor.search(params[:q])
    @donors = @q.result(:distinct => true)
  end

	def edit
		@user = current_user
		@donor = Donor.find(params[:id])
	end

  def update
  	@user = current_user
  	@donor = Donor.find(params[:id])
  	@donor.update_attributes(params[:donor])
  	if @donor.save
  		redirect_to @donor, :notice => "Donor updated."
  	else
  		render :edit
  	end
  end

  def index
  	@donors = Donor.order("last_name ASC")
  end

  def show
  	@donor = Donor.find(params[:id])
  end
end
