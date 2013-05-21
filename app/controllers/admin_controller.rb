class AdminController < ApplicationController
  def index
    @gitserver = GitServer.new
    repo1 = GitRepo.new
    repo1.project_name = 'repo1'
    repo2 = GitRepo.new
    repo2.project_name= 'repo2'

    @gitserver.name = 'server'
    @gitserver.protocol = 'ssh'
    @gitserver.id= 1

    @gitserver.git_repos << [repo1, repo2]
    @gitserver
  end

  def server_edit
    render
  end
end
