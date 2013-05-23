class AdminController < ApplicationController
  def index
    @git_model = {}
    server = GitServer.first
    repos = GitRepo.all
    @git_model[:server] = server
    @git_model[:repos] = repos
    @git_model
  end

  def server_edit
    server = GitServer.find(params[:id])
    server.attributes = params[:post]
    server.save
    redirect_to :action => :index
  end

  def server_new
    server = GitServer.new
    server.name = params[:name]
    server.protocol=params[:protocol]
    server.server_user=params[:server_user]
    server.server_address=params[:server_address]
    server.password_digest=params[:password_digest]
    server.local_dir=params[:local_dir]
    server.edit_with_branches=[:edit_with_branches]
    server.save
    redirect_to :action => :index
  end
end
