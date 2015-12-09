class Mailer < ActionMailer::Base
  default from: 'suppoer@example.com'
  
#Wojtek.herman@icloud.com
  def send_mail(diet_form)
    @diet_form = diet_form

    mail(from: @diet_form.first_name + ' ' + @diet_form.last_name,
         to: 'pawelekstro@gmail.com',
         subject: @diet_form.target)
  end
end