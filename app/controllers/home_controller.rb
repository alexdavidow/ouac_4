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
    MessageMailer.contact_submit(params).deliver
  end

  # def contact_submit(params)
  #   @name = params[:name]
  #   @company = params[:company]
  #   @email = params[:email]
  #   @phone_number = params[:phone_number]
  #   @comments = params[:comments]
  #   mail(to: 'onceuponacupcakenyc@gmail.com', subject: 'New Contact Submission')
  # end

end
