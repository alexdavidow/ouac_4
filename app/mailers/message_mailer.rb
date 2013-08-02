class MessageMailer < ActionMailer::Base
  default from: "onceuponacupcakenyc@gmail.com"
  default to: "onceuponacupcakenyc@gmail.com"

  def contact_submit(params)
    # or is this where the view(contact_submit.html.erb) gets the parameters?
    @name = params[:name]
    @company = params[:company]
    @email = params[:email]
    @phone_number = params[:phone_number]
    @comments = params[:comments]
    # @url = 'http://once-upon-a-cupcake.herokuapp.com/'
    # if i want an attachment
    image_url = Rails.root + 'public/ouac-logo.png'
    attachments.inline['ouac-logo.png'] = File.read(image_url)
    mail(to: @user.email, subject: 'New Feedback Submission')
    # attachments["ouac-logo.png"] = File.read("#{Rails.root}/public/images/ouac-logo.png")
    # the Rails.root bit may be extranneous but what ryan bates did. Also, see above.
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
