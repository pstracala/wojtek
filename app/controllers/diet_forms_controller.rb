class DietFormsController < ApplicationController

  def new
    @diet_form = DietForm.new
  end

  def create
    @diet_form = DietForm.new(params[:diet_form])
    respond_to do |format|
      if valid_captcha?(params[:captcha])
        if @diet_form.valid?
          Mailer.send_mail(@diet_form.first_name,
                           @diet_form.last_name,
                           @diet_form.email,
                           @diet_form.weight,
                           @diet_form.height,
                           @diet_form.obwod_pasa,
                           @diet_form.kind_of_work,
                           @diet_form.wake_up_time,
                           @diet_form.sleep_time,
                           @diet_form.training_count,
                           @diet_form.meals_count,
                           @diet_form.target
                          ).deliver_later
          format.js { render 'success' }
        else
          format.js { render 'validation_error'}
        end
      else
        format.js { render 'invalid_captcha' }
      end
    end
  end

  
  
end