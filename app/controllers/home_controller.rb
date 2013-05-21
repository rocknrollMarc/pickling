class HomeController < ApplicationController
  def index
    GitSyncWorker.perform_async('hello', 20)
  end
end
