class DietFormsController < ApplicationController

  def new
    @diet_form = DietForm.new
    #Mailer.test.deliver_now
  end

  def create
    @diet_form = DietForm.new(params[:diet_form])
    puts @diet_form.to_yaml
    if @diet_form #.deliver
      flash.now[:notice] = 'Dziękuję za zgłoszenie. Niedługo się skontaktujemy.'
      render :new
    else
      flash.now[:error] = 'Wystąpił nieznany błąd.'
      render :new
    end
    #redirect_to new_diet_form_path
  end

  
  
end