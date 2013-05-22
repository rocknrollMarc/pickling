class AdminController < ApplicationController
  def index
    @gitserver = GitServer.first
  end

  def server_edit
    render
  end

  def server_new
    server = GitServer.new
    server.name = params[:name]
    server.protocol=params[:protocol]
    server.server_address=params[:server_address]
    server.password_digest=params[:password_digest]
    server.local_dir=params[:local_dir]
    server.edit_with_branches=[:edit_with_branches]
    server.save
    redirect_to :action => :index
  end
end
