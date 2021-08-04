class ArticlesController < ApplicationController
  layout "admin"
  def index
    # (0..500).to_a.each do |n|
    #   TaskLoggerJob.set(wait: 5.second).perform_later "#{Time.now.to_s} - #{n}"
    # end
    TaskLoggerJob.set(wait: 20.second).perform_later Time.now.to_s
  end
end
