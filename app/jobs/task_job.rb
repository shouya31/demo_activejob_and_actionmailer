class TaskJob < ApplicationJob
  queue_as :default

  def perform(title="掃除")
    Task.create!(title: title)
  end
end
