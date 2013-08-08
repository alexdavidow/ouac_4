class MessageMailer < ActionMailer::Base
  default from: "onceuponacupcakenyc@gmail.com"
  # default to: "onceuponacupcakenyc@gmail.com"

  def contact_submit(params)
    @name = params[:name]
    @company = params[:company]
    @email = params[:email]
    @phone_number = params[:phone_number]
    @comments = params[:comments]
    # @url = 'http://once-upon-a-cupcake.herokuapp.com/'
    # if i want an attachment
    image_url = Rails.root + 'app/assets/images/ouac-logo.png'
    attachments.inline['ouac-logo.png'] = File.read(image_url)
    mail(to: 'onceuponacupcakenyc@gmail.com', subject: 'New Feedback Submission')
  end

  def order_confirmation(current_user, cart)
    @user = current_user
    @cart = cart
    image_url = Rails.root + 'app/assets/images/ouac-logo.png'
    attachments.inline['ouac-logo.png'] = File.read(image_url)
    mail(to: @user.email, subject: 'Thank you for your order')
  end

  def admin_receives_order(current_user, cart)
    @user = current_user
    @cart = cart

    mail(to: 'onceuponacupcakenyc@gmail.com', subject: 'New Website Order Received')
  end


  def receive(email)
    page = Page.find_by_address(email.to.default)
    page.emails.create(
      subject: email.subject,
      body: email.body
    )
 
    if email.has_attachments?
      email.attachments.each do |attachment|
        page.attachments.create({
          file: attachment,
          description: email.subject
        })
      end
    end
  end

  def warning_email(user)
    @user = user
    @url = 'http://heroku.com'
    # image_url = Rails.root + 'public/how-about-no-bear.jpg'
    # attachments.inline['01-how-about-no-bear.jpg'] = File.read(image_url)
    mail(to: @user.email, subject: 'Your pusher account has reached its limit')
  end


end
