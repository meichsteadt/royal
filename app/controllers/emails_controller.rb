class EmailsController < ApplicationController
  def create
    @email = Email.new(email_params)
    if @email.save!
      redirect_to :back
    else
      flash[:notice] = "There was an error saving your email"
    end
  end

private
  def email_params
    params.require(:email).permit(:name, :email)
  end
end
