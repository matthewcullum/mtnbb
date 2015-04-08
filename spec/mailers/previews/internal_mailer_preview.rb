# Preview all emails at http://localhost:3000/rails/mailers/internal_mailer
class InternalMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/internal_mailer/contact
  def contact
    InternalMailer.contact
  end

  # Preview this email at http://localhost:3000/rails/mailers/internal_mailer/internet_request
  def internet_request
    InternalMailer.internet_request
  end

end
