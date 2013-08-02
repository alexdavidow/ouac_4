class HomeController < ApplicationController
  def index
    render :index
  end

  def menu
    render :menu
  end

  def about
    render :about
  end

  def contact
    render :contact
  end

  def submit_contact
    puts "form submitted"
  end

  def my_form_email(params)
    # is there where the view(contact_submit.html.erb) gets the parameters?
    @name = params[:name]
    @company = params[:company]
    @email = params[:email]
    @phone_number = params[:phone_number]
    @comments = params[:comments]
    mail(to: 'onceuponacupcakenyc@gmail.com', subject: 'New Contact Submission')
  end

  def contact_submit
    MessageMailer.contact_submit(params).deliver
  end
end
