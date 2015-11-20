class DietFormsController < ApplicationController

  def new
    @diet_form = DietForm.new
  end

  def create
    @diet_form = DietForm.new(params[:diet_form])
    @diet_form.request = request
    if @diet_form.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      render :new
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
  
end