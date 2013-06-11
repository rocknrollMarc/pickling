class HomeController < ApplicationController
  def index
    #GitSyncWorker.perform_async('hello', 20)
  end
  
  def about
  end
end
