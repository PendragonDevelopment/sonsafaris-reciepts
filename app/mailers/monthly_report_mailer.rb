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
      'CHNUMBER' => donation.details,
      'LIST:COMPANY' => "Son Safaris",
      'LIST:DESCRIPTION' => "You are receiving this email because you opted in at SonSafaris.com",
      'HTML:LIST_ADDRESS_HTML' => "Son Safaris<br />P.O. Box 48476<br />Athens, Georgia 30604"
    },
    headers: {"X-MC-SigningDomain" => "http://sonsafaris.com"}
  end
end