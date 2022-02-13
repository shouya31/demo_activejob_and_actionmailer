class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
    before_action :set_user_and_url

    def welcome_email
        mail(to: @user.email, subject: 'Hello World')
    end

    private

    def set_user_and_url
        @user = params[:user]
        @url = 'http://example.com/login'
    end
end
