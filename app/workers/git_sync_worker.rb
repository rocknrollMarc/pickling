class GitSyncWorker
  include Sidekiq::Worker
  def perform(name, count)
    count.times { |c|
      puts "doing work #{c.to_s} with #{name}"
    }
  end
end