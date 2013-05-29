class AdminController < ApplicationController
  def index
    @git_model = {}
    server = GitServer.first
    repos = GitRepo.all
    @git_model[:server] = server
    @git_model[:repos] = repos
    @git_model[:protocols] = %w(ssh http https git)
    @git_model
  end

  def server_edit
    server = GitServer.find(params[:id])
    server.attributes = params[:post]
    server.save
    redirect_to :action => :index
  end

  def repo_edit
    repo = GitRepo.find(params[:id])
    repo.attributes = params[:post]
    repo.save
    redirect_to :action => :index
  end

  def server_new
    server = GitServer.new
    server.name = params[:name]
    server.protocol=params[:protocol]
    server.server_user=params[:server_user]
    server.password_digest=params[:password_digest]
    server.local_dir=params[:local_dir]
    server.save
    redirect_to :action => :index
  end

  def repo_new
    repo = GitRepo.new
    repo.name = params[:name]
    repo.relative_remote_url=params[:relative_remote_url]
    repo.git_server_id=params[:git_server_id]
    repo.save
    redirect_to :action => :index
  end
end
