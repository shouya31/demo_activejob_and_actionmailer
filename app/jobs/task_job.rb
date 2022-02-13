class TaskJob < ApplicationJob
  queue_as :default

  after_perform do |job|
    user = job.arguments.last
    send_mail(user)
  end

  def perform(title, user)
    Task.create!(title: title)
  end

  private

  def send_mail(user)
    UserMailer.with(user: user).welcome_email.deliver_later
  end
end
