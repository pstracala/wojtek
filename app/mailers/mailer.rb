class Mailer < ActionMailer::Base


  def test
    mail(from: 'example@google.com',
         to: 'pawelekstro@gmail.com',
         subject: 'Welcome to My Awesome Site')
  end
end