class Mailer < ActionMailer::Base
  default from: 'suppoer@example.com'
  
#Wojtek.herman@icloud.com
  def send_mail(first_name, last_name, email, weight, height, obwod_pasa, kind_of_work, wake_up_time, sleep_time, training_count, meals_count, target)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @weight = weight
    @height = height
    @target = target
    @obwod_pasa = obwod_pasa
    @kind_of_work = kind_of_work
    @wake_up_time = wake_up_time
    @sleep_time = sleep_time
    @training_count = training_count
    @meals_count = meals_count
    
    mail(from: first_name + ' ' + last_name,
         to: 'Wojtek.herman@icloud.com',
         subject: target)
  end
  
end