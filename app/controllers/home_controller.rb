class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  # after_filter :set_header_for_iframe

  def index
  end

  def gallery
  end
  def services
  end
  def contact
  end
  def about
  	
  end

  def customer_contact
  	binding.pry
    customer_name = params['Name']
    email = params['Email']
    mobile = params['Mobile']
    subject = params['Subject']
    message = params['Message']
    @user = User.create(name: customer_name, email: email, mobile: mobile, subject: subject, message: message)
    # UserMailer.welcome_email(@user).deliver_later
    # UserMailer.website_enquiry(@user).deliver_later
    redirect_to '/contact' and return
  end

  private

  def set_header_for_iframe
    response.headers.delete "X-Frame-Options"
  end
end
