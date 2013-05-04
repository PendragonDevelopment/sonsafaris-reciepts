class DonationsController < ApplicationController
  def new
    @user = current_user
    @donor = Donor.find(params[:donor_id])
    @donation = Donation.new
  end

  def create
    @user = current_user
    @donor = Donor.find(params[:donor_id])
    @donation = @donor.donations.build(params[:donation])
    if @donation.save
      redirect_to @donor, :notice => "Donation recorded"
    else
      render :new, :notice => "Something went wrong. Try again."
    end
  end

  def show
    @user = current_user
    @donor = Donor.find(params[:donor_id])
    @donation = Donation.find(params[:id])
  end

  def index
    @user = current_user
    @donor = Donor.find(params[:donor_id])
    @donations = @donor.donations
  end

  def edit
  end

  def update
  end

  def donation_totals
    @donations = Donation.all
    @totals = 0
    @donations.each do |d|
      @totals += d.amount
    end
    @donations_by_month = Donation.find(:all).group_by{|donation| donation.donation_date.at_beginning_of_month}

  end

  # def donations_by_month
  #   @month = params[:month]
  #   @donations_for_month = Donation.where(:donation_date => @month.beginning_of_month..@month.end_of_month)

  # end
end
