class TaskLoggerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    logger.info "Thing are happen"
    system "echo 'Created a task with following attributes :: #{args} ' >> log/abc.log"
  end
end
