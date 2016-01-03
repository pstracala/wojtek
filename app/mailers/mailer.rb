class Mailer < ActionMailer::Base
  default from: 'suppoer@example.com'
  
#Wojtek.herman@icloud.com
  def send_mail()
    # @diet_form = diet_form
    # puts @diet_form
    mail(from: 'siemka',
         to: 'pawelekstro@gmail.com',
         subject: 'TEST')
  end
end