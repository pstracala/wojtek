class DietFormsController < ApplicationController

  def new
    @diet_form = DietForm.new
  end

  def create
    @diet_form = DietForm.new(params[:diet_form])
    respond_to do |format|
      if valid_captcha?(params[:captcha])
        if @diet_form.valid?
          Mailer.send_mail().deliver_later
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