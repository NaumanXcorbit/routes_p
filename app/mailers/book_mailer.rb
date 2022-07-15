class BookMailer < ApplicationMailer
  def send_email(publisher)
    @publisher = publisher
    mail(to: "#{publisher.name} <#{publisher.email}>", subject: "Publisher email")
  end
end
