class MonthlyReportMailer < MandrillMailer::TemplateMailer
  default from: 'webmaster@sonsafaris.com',
          from_name: 'Son Safaris'

  def send_report(donor, donation)
    mandrill_mail template: 'new eom receipt',
    subject: 'End of Month receipts',
    to: {email: donor.email, name: donor.name},
    vars: {
      'FNAME' => donor.first_name,
      'AMOUNT' => donation.amount,
      'DONDATE' => donation.donation_date,
      'CHNUMBER' => donation.details
    },
    headers: {"X-MC-SigningDomain" => "http://sonsafaris.com"}
  end
end